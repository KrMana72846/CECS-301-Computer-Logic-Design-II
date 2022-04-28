// 0.Documentation Section 
// main.c
// Author: Kenny Khut
// Date: May 8,2019
// Create a garage door using an obstacle avoideance sensor 
// and a stepper motor to simulate a simple smart home
// and two buttons to simulate garage door control buttons

// 1. Pre-processor Directives Section
// Constant declarations to access port registers using 
// symbolic names instead of addresses
#include <stdint.h>
#include "stepper.h"

// PortF Addresses
#define GPIO_PORTF_DATA_R       (*((volatile unsigned long *)0x400253FC))
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_AFSEL_R      (*((volatile unsigned long *)0x40025420))
#define GPIO_PORTF_PUR_R        (*((volatile unsigned long *)0x40025510))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
#define GPIO_PORTF_LOCK_R       (*((volatile unsigned long *)0x40025520))
#define GPIO_PORTF_CR_R         (*((volatile unsigned long *)0x40025524))
#define GPIO_PORTF_AMSEL_R      (*((volatile unsigned long *)0x40025528))
#define GPIO_PORTF_PCTL_R       (*((volatile unsigned long *)0x4002552C))

#define GPIO_PORTF_IS_R         (*((volatile unsigned long *)0x40025404))
#define GPIO_PORTF_IBE_R        (*((volatile unsigned long *)0x40025408))
#define GPIO_PORTF_IEV_R        (*((volatile unsigned long *)0x4002540C))
#define GPIO_PORTF_IM_R         (*((volatile unsigned long *)0x40025410))
#define GPIO_PORTF_RIS_R        (*((volatile unsigned long *)0x40025414))
#define GPIO_PORTF_ICR_R        (*((volatile unsigned long *)0x4002541C))
	
// PortB Addresses
#define GPIO_PORTB_DATA_R       (*((volatile unsigned long *)0x400053FC))
#define GPIO_PORTB_DIR_R        (*((volatile unsigned long *)0x40005400))
#define GPIO_PORTB_AFSEL_R      (*((volatile unsigned long *)0x40005420))
#define GPIO_PORTB_PUR_R        (*((volatile unsigned long *)0x40005510))
#define GPIO_PORTB_DEN_R        (*((volatile unsigned long *)0x4000551C))
#define GPIO_PORTB_LOCK_R       (*((volatile unsigned long *)0x40005520))
#define GPIO_PORTB_CR_R         (*((volatile unsigned long *)0x40005524))
#define GPIO_PORTB_AMSEL_R      (*((volatile unsigned long *)0x40005528))
#define GPIO_PORTB_PCTL_R       (*((volatile unsigned long *)0x4000552C))

#define GPIO_PORTB_IS_R         (*((volatile unsigned long *)0x40005404))
#define GPIO_PORTB_IBE_R        (*((volatile unsigned long *)0x40005408))
#define GPIO_PORTB_IEV_R        (*((volatile unsigned long *)0x4000540C))
#define GPIO_PORTB_IM_R         (*((volatile unsigned long *)0x40005410))
#define GPIO_PORTB_RIS_R        (*((volatile unsigned long *)0x40005414))
#define GPIO_PORTB_ICR_R        (*((volatile unsigned long *)0x4000541C))

// PortD Addresses
#define STEPPER  (*((volatile uint32_t *)0x4000703C)) // PD0-3

#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI0_R             (*((volatile unsigned long *)0xE000E400))	
#define NVIC_PRI7_R             (*((volatile unsigned long *)0xE000E41C))  // IRQ 28 to 31 Priority Register	
#define NVIC_SYS_PRI3_R         (*((volatile unsigned long *)0xE000ED20))  // Sys. Handlers 12 to 15 Priority
#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))

#define SENSOR									(*((volatile unsigned long *)0x40005004))
#define LED 										(*((volatile unsigned long *)0x40025038))

// Declared Colors
#define red   0x02
#define blue  0x04
#define green 0x08


// Global Variables
unsigned long counter; // 1 count = 0.5 secs
unsigned long timer;
unsigned char mode;  // mode decides how LED changes
unsigned long new_L; //Hold new LED color
unsigned long maxCounter = 4600;

// 2. Declarations Section
void PortB_Init(void);
void PortF_Init(void);
void EnableInterrupts(void);
void WaitForInterrupt(void);  // low power mode
void SysTick_Init(unsigned long);
void Stepper_Init(void);
void Delay(void);

// 3. Main
int main(void){    
	PortB_Init();
  PortF_Init();
	Stepper_Init();
	SysTick_Init(69999);
	EnableInterrupts(); 
	mode = 0;
	LED = green;
  while(1){
		WaitForInterrupt();
}
	}

void PortF_Init(void){  
	volatile unsigned long delay;                        
  SYSCTL_RCGC2_R |= 0x00000020; // (a) activate clock for port F
	delay = SYSCTL_RCGC2_R;
	GPIO_PORTF_LOCK_R = 0x4C4F434B;     //unlock for PB0
  GPIO_PORTF_CR_R |= 0x1F;           // allow changes to PF4-0 
  GPIO_PORTF_DIR_R |= 0x0E;          // 5) PF4,PF0 input, PF3,PF2,PF1 output 	
  GPIO_PORTF_AFSEL_R &= ~0x1F;  //     disable alt funct on PF4
  GPIO_PORTF_DEN_R |= 0x1F;     //     enable digital I/O on PF4-PF0 
  GPIO_PORTF_PCTL_R &= ~0x000FFFFF; // configure PF4 as GPIO
  GPIO_PORTF_AMSEL_R &=~ 0x1F;       //     disable analog functionality on PF
  GPIO_PORTF_PUR_R |= 0x11;     //     enable weak pull-up on PF4
	
  GPIO_PORTF_IS_R &= ~0x11;     // (d) PF4 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x11;    //     PF4 is not both edges   *SUPPOSED TO BE DOUBLE EDGED*
  GPIO_PORTF_IEV_R &= ~0x11;    //     PF4 falling edge event
  GPIO_PORTF_ICR_R = 0x11;      // (e) clear flag4
  GPIO_PORTF_IM_R |= 0x11;      // (f) arm interrupt on PF4
  NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R = 0x40000000;      // (h) enable interrupt 30 in NVIC
}

void PortB_Init(void){ 
	volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x02;     // 1) B clock
  delay = SYSCTL_RCGC2_R;           // delay   
  GPIO_PORTB_CR_R |= 0x01;           // allow changes to 0       
  GPIO_PORTB_AMSEL_R &= ~0x01;        // 3) disable analog function
  GPIO_PORTB_PCTL_R &= ~0x00FFFFFF;   // 4) GPIO clear bit PCTL  
  GPIO_PORTB_DIR_R &= ~0x01;          // 5) PB0 input
  GPIO_PORTB_AFSEL_R &= ~0x01;        // 6) no alternate function     
  GPIO_PORTB_DEN_R |= 0x01;          // 7) enable digital pin PB0
	
	GPIO_PORTB_IS_R &= ~0x01;     // (d) PB0 is edge-sensitive
  GPIO_PORTB_IBE_R |= 0x01;    //     PB0 is  both edges   *SUPPOSED TO BE DOUBLE EDGED*
  GPIO_PORTB_IEV_R &= ~0x01;    //     PB0 both rising and falling edge event
  GPIO_PORTB_ICR_R = 0x01;      // (e) clear flag 0
  GPIO_PORTB_IM_R |= 0x01;      // (f) arm interrupt on PB0
	NVIC_PRI0_R = (NVIC_PRI0_R&0xFFFF00FF)|0x00000000; // (g) priority 0
	NVIC_EN0_R = 0x00000002;      // (h) enable interrupt 30 in NVIC
}

//Handler for PortF, logic for button controls
void GPIOPortF_Handler(void){
	if (SENSOR == 1) {
		if (((GPIO_PORTF_RIS_R) & 0x01) == 0x01){ //  if button2 is pressed
			GPIO_PORTF_ICR_R = 0x01;	 
			if (LED == blue)
				mode = 2;	
				maxCounter = 4600;
		}

		else if (((GPIO_PORTF_RIS_R) & 0x10) == 0x10){ //  if button1 is pressed
			GPIO_PORTF_ICR_R = 0x10;
				if (LED == green) 
					mode = 1;
					maxCounter = 4600;
			}		
		}
	
	else {
		if (((GPIO_PORTF_RIS_R) & 0x01) == 0x01){ //  if button2 is pressed
		GPIO_PORTF_ICR_R = 0x01;	 
			if (LED == blue)
				mode = 2;	
				maxCounter = 4600;
			}
		}
	}
				
// Handler for PortB, logic for sensor
void GPIOPortB_Handler(void) {
		Delay();
		GPIO_PORTB_ICR_R = 0x01;
	if (SENSOR == 0x01) { // detects if car is approaching
		if (LED == green)
			mode = 0;
		else // LED is blue
			mode = 2;
			maxCounter = 9300;
	}
	else { // detects if car is moving away
		if (LED == blue) 
			mode = 0;
		else //LED is green
			mode = 1;
			maxCounter = 4600;
		
	}
}

//Initialize SysTick
void SysTick_Init(unsigned long period){
  NVIC_ST_CTRL_R = 0;         // disable SysTick during setup
  NVIC_ST_RELOAD_R = period-1;// reload value
  NVIC_ST_CURRENT_R = 0;      // any write to current clears it
  NVIC_SYS_PRI3_R = (NVIC_SYS_PRI3_R&0x00FFFFFF)|0x40000000; // priority 2
// enable SysTick with core clock and interrupts		
	NVIC_ST_CTRL_R = 0x07;
}

//SysTick Handler
void SysTick_Handler(void){

	// Creates new_L at the beginning of the count
	if (mode != 0) {
	if (counter == 0)
		if (timer == 0) {
	LED = 0;
	}
}

		if (mode == 1) { // LED changes from green to blue
			new_L = blue;
			Stepper_CCW(0);
		}
		else if (mode == 2) { // LED changes from blue to green
			new_L = green;
			Stepper_CW(0);
		}

	// flashes red LED every 0.5 secs
	if (mode != 0) {
	timer += 1;
	counter += 1;	
	if (timer == 200) {
	GPIO_PORTF_DATA_R = (LED == red) ? 0x00:red; 
	
	timer = 0;
	}
}
	
	// Finishes count and resets counter and mode
	if (counter >= 4600) { // Ends the flashing and rotation
		counter = 0;
		mode = 0;
		LED = new_L; // Switches LED to new color
	}
}

void Delay(void){unsigned long volatile time;
  time = 2*727240*200/91/2;  // 0.1sec
  while(time){
		time--;
  }
}

// Color    LED(s) PortF
// dark     ---    0
// red      R--    0x02
// blue     --B    0x04
// green    -G-    0x08
// yellow   RG-    0x0A
// sky blue -GB    0x0C
// white    RGB    0x0E
// pink     R-B    0x06

