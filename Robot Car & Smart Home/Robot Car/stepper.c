// Stepper.c
// Author: Kenny Khut
// Date: May 3, 2019
// Provide functions that step the motor once clockwise, step
// once counterclockwise, and initialize the stepper motor
// interface.


// PD3 connected to driver for stepper motor coil A
// PD2 connected to driver for stepper motor coil A'
// PD1 connected to driver for stepper motor coil B
// PD0 connected to driver for stepper motor coil B'

// PE3 connected to driver for stepper motor coil A
// PE2 connected to driver for stepper motor coil A'
// PE1 connected to driver for stepper motor coil B
// PE0 connected to driver for stepper motor coil B'

#include <stdint.h>
#include "tm4c123gh6pm.h"

// State Machine for Stepper Motors
struct State{
  uint8_t Out;     // Output
  uint8_t Next[2]; // CW/CCW
};
typedef const struct State StateType;

#define clockwise 0        // Next index
#define counterclockwise 1 // Next index
StateType fsm[4]={
  { 0x0C,{1,3}}, //1100
  { 0x06,{2,0}},	//0100
  { 0x03,{3,1}},	//0011
  { 0x09,{0,2}}	//1001
};
unsigned char l; // current state
unsigned char r;
unsigned char s;

//Defines stepper motors
#define stepper_L  (*((volatile uint32_t *)0x4000703C))
#define stepper_R	 (*((volatile uint32_t *)0x4002403C))

// Move 1.8 degrees counterclockwise, delay is wait after each step

void Stepper_Left(uint32_t delay){ // car turns left
  l = fsm[l].Next[clockwise]; // clock wise circular
  stepper_L = fsm[l].Out; // step motor
	r = fsm[r].Next[clockwise]; // clock wise circular
  stepper_R = fsm[r].Out; // step motor
}

void Stepper_Right(uint32_t delay){ // car turns right
  r = fsm[r].Next[counterclockwise]; // counter clock wise circular
  stepper_R = fsm[r].Out; // step motor
	l = fsm[l].Next[counterclockwise]; // counter clock wise circular
  stepper_L = fsm[l].Out; // step motor
}

void Stepper_Forward(uint32_t delay) { // car moves forward
	l = fsm[l].Next[clockwise]; // clock wise circular
  stepper_L = fsm[l].Out; // step motor
	r = fsm[r].Next[counterclockwise]; // counter clock wise circular
  stepper_R = fsm[r].Out; // step motor
}

void Stepper_Backward (uint32_t delay) { // car moves backwards
	l = fsm[l].Next[counterclockwise]; // clock wise circular
  stepper_L = fsm[l].Out; // step motor
	r = fsm[r].Next[clockwise]; // counter clock wise circular
  stepper_R = fsm[r].Out; // step motor
}

// Initialize Stepper interface
void Stepper_Init(void){
  SYSCTL_RCGCGPIO_R |= 0x18; // 1) activate port D&E
  l = 0; 								// variable for left motor position in fsm
  r = 0;                // variable for right motor position in fsm

  GPIO_PORTD_AMSEL_R &= ~0x0F;      // 3) disable analog functionality on PD3-0
  GPIO_PORTD_PCTL_R &= ~0x0000FFFF; // 4) GPIO configure PD3-0 as GPIO
  GPIO_PORTD_DIR_R |= 0x0F;   // 5) make PD3-0 out
  GPIO_PORTD_AFSEL_R &= ~0x0F;// 6) disable alt funct on PD3-0
  GPIO_PORTD_DR8R_R |= 0x0F;  // enable 8 mA drive
  GPIO_PORTD_DEN_R |= 0x0F;   // 7) enable digital I/O on PD3-0 
	
	GPIO_PORTE_AMSEL_R &= ~0x0F;      // 8) disable analog functionality on PE3-0
  GPIO_PORTE_PCTL_R &= ~0x0000FFFF; // 9) GPIO configure PE3-0 as GPIO
  GPIO_PORTE_DIR_R |= 0x0F;   // 10) make PE3-0 out
  GPIO_PORTE_AFSEL_R &= ~0x0F;// 11) disable alt funct on PE3-0
  GPIO_PORTE_DR8R_R |= 0x0F;  // enable 8 mA drive
  GPIO_PORTE_DEN_R |= 0x0F;   // 12) enable digital I/O on PE3-0 
}
