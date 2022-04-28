// Stepper.c
// Author: Kenny Khut
// Date: May 8, 2019
// Provide functions that step the motor once clockwise, step
// once counterclockwise, and initialize the stepper motor
// interface.

// PD3 connected to driver for stepper motor coil A
// PD2 connected to driver for stepper motor coil A'
// PD1 connected to driver for stepper motor coil B
// PD0 connected to driver for stepper motor coil B'

#include <stdint.h>
#include "tm4c123gh6pm.h"
struct State{
  uint8_t Out;     // Output
  uint8_t Next[2]; // CW/CCW
};
typedef const struct State StateType;

#define clockwise 0        // Next index
#define counterclockwise 1 // Next index
StateType fsm[4]={
  {12,{1,3}},
  { 6,{2,0}},
  { 3,{3,1}},
  { 1,{0,2}}
};
unsigned char s; // current state

#define STEPPER  (*((volatile uint32_t *)0x4000703C))


// Move 1.8 degrees clockwise, delay is the time to wait after each step
void Stepper_CW(uint32_t delay){
  s = fsm[s].Next[clockwise]; // clock wise circular
  STEPPER = fsm[s].Out; // step motor
}
// Move 1.8 degrees counterclockwise, delay is wait after each step
void Stepper_CCW(uint32_t delay){
  s = fsm[s].Next[counterclockwise]; // counter clock wise circular
  STEPPER = fsm[s].Out; // step motor
}
// Initialize Stepper interface
void Stepper_Init(void){
  SYSCTL_RCGCGPIO_R |= 0x08; // 1) activate port D
  s = 0; 
                                    // 2) no need to unlock PD3-0
  GPIO_PORTD_AMSEL_R &= ~0x0F;      // 3) disable analog functionality on PD3-0
  GPIO_PORTD_PCTL_R &= ~0x0000FFFF; // 4) GPIO configure PD3-0 as GPIO
  GPIO_PORTD_DIR_R |= 0x0F;   // 5) make PD3-0 out
  GPIO_PORTD_AFSEL_R &= ~0x0F;// 6) disable alt funct on PD3-0
  GPIO_PORTD_DR8R_R |= 0x0F;  // enable 8 mA drive
  GPIO_PORTD_DEN_R |= 0x0F;   // 7) enable digital I/O on PD3-0 
	
//	NVIC_PRI0_R = (NVIC_PRI0_R&0x00FFFFFF)|0x00000000; // (g) priority 0
//	NVIC_EN0_R = 0x00000008;      // (h) enable interrupt 30 in NVIC
}
