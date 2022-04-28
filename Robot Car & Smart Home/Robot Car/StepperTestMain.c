// StepperTestMain.c
// Runs on LM4F120/TM4C123
// Test the functions provided by Stepper.c,
// 
// Before connecting a real stepper motor, remember to put the
// proper amount of delay between each CW() or CCW() step.
// Daniel Valvano

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
   Example 4.1, Programs 4.4, 4.5, and 4.6
   Hardware circuit diagram Figure 4.27

 Copyright 2015 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

// PD3 connected to driver for stepper motor coil A /In1
// PD2 connected to driver for stepper motor coil A' /In2
// PD1 connected to driver for stepper motor coil B /In3
// PD0 connected to driver for stepper motor coil B' /In4
#include <stdint.h>
#include "stepper.h"

#define NVIC_PRI0_R (*((volatile unsigned long *)0xE000E41C))
#define NVIC_EN0_R (*((volatile unsigned long *)0xE000E100))
#define NVIC_SYS_PRI3_R (*((volatile unsigned long *)0xE000ED20))
#define NVIC_ST_CTRL_R (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R (*((volatile unsigned long *)0xE000E018))
	
// define PORT F
#define GPIO_PORTF_DATA_R (*((volatile unsigned long *)0x400253FC))
#define GPIO_PORTF_DIR_R (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_AFSEL_R (*((volatile unsigned long *)0x40025420))
#define GPIO_PORTF_PUR_R (*((volatile unsigned long *)0x40025510))
#define GPIO_PORTF_DEN_R (*((volatile unsigned long *)0x4002551C))
#define GPIO_PORTF_LOCK_R (*((volatile unsigned long *)0x40025520))
#define GPIO_PORTF_CR_R (*((volatile unsigned long *)0x40025524))
#define GPIO_PORTF_AMSEL_R (*((volatile unsigned long *)0x40025528))
#define GPIO_PORTF_PCTL_R (*((volatile unsigned long *)0x4002552C))
#define SYSCTL_RCGC2_R (*((volatile unsigned long *)0x400FE108))

#define GPIO_PORTF_RIS_R (*((volatile unsigned long *)0x40025414))
#define GPIO_PORTF_IS_R (*((volatile unsigned long *)0x40025404))
#define GPIO_PORTF_IBE_R (*((volatile unsigned long *)0x40025408))
#define GPIO_PORTF_IEV_R (*((volatile unsigned long *)0x4002540C))
#define GPIO_PORTF_ICR_R (*((volatile unsigned long *)0x4002541C))
#define GPIO_PORTF_IM_R (*((volatile unsigned long *)0x40025410))
#define NVIC_PRI7_R (*((volatile unsigned long *)0xE000E41C))
#define NVIC_EN0_R (*((volatile unsigned long *)0xE000E100))
#define NVIC_SYS_PRI3_R (*((volatile unsigned long *)0xE000ED20))
#define NVIC_ST_CTRL_R (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R (*((volatile unsigned long *)0xE000E018))
//Define PORTB

#define GPIO_PORTB_DATA_R (*((volatile unsigned long *)0x400053FC))
#define GPIO_PORTB_DIR_R (*((volatile unsigned long *)0x40005400))
#define GPIO_PORTB_AFSEL_R (*((volatile unsigned long *)0x40005420))
#define GPIO_PORTB_PUR_R (*((volatile unsigned long *)0x40005510))
#define GPIO_PORTB_DEN_R (*((volatile unsigned long *)0x4000551C))
#define GPIO_PORTB_LOCK_R (*((volatile unsigned long *)0x40005520))
#define GPIO_PORTB_CR_R (*((volatile unsigned long *)0x40005524))
#define GPIO_PORTB_AMSEL_R (*((volatile unsigned long *)0x40005528))
#define GPIO_PORTB_PCTL_R (*((volatile unsigned long *)0x4000552C))
#define SYSCTL_RCGC2_R (*((volatile unsigned long *)0x400FE108))
	
#define GPIO_PORTB_RIS_R (*((volatile unsigned long *)0x40005414))
#define GPIO_PORTB_IS_R (*((volatile unsigned long *)0x40005404))
#define GPIO_PORTB_IBE_R (*((volatile unsigned long *)0x40005408))
#define GPIO_PORTB_IEV_R (*((volatile unsigned long *)0x4000540C))
#define GPIO_PORTB_ICR_R (*((volatile unsigned long *)0x4000541C))
#define GPIO_PORTB_IM_R (*((volatile unsigned long *)0x40005410))



#define LED										(*((volatile unsigned long *)0x40025038))
	
#define red   0x02
#define blue  0x04
#define green 0x08

void init_PortF(void);
void init_PortB(void);
unsigned int toggle = 0; // flag to change green to blue
unsigned int toggle_counter = 0; 
unsigned int reverseDoor = 0; 
unsigned int green_or_blue = 0;
unsigned int count = 0; 
unsigned int flag_red = 0; 

int main(void){
	

	init_PortB();	
	init_PortF();
  Stepper_Init(159999);

	// start off with green 
	LED = green; 
	
  while(1){
		
	if(reverseDoor){ // starts it
	
		// when the rotation is met
	if (count == 1100){
				
				// turn everything back to 0 
				// change the toggling
					flag_red = 0; 
					reverseDoor = 0; 
					count = 0; 
					toggle = ~toggle;
					
			if (green_or_blue == 1){ 
					LED = green; 
						}
			else if (green_or_blue ==0) {
					LED = blue;
			}
		}
	}
	
	}
}
void init_PortF(void){ 
	volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000020; // (a) activate clock for port F
	delay = SYSCTL_RCGC2_R;
	GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock PortF PF0  
	GPIO_PORTF_CR_R = 0x0F;           // allow changes to PF3-0 
	GPIO_PORTF_DIR_R = 0x0E;          // 5)PF3,PF2,PF1 output   
  GPIO_PORTF_AFSEL_R &= ~0x1F;  //     disable alt funct on PF4
  GPIO_PORTF_DEN_R |= 0x1F;     //     enable digital I/O on PF4  
  GPIO_PORTF_PCTL_R &= ~0x000FFFFF; // configure PF4 as GPIO
  GPIO_PORTF_AMSEL_R = 0;       //     disable analog functionality on PF
  GPIO_PORTF_PUR_R |= 0x11;     //     enable weak pull-up on PF4
  GPIO_PORTF_IS_R &= ~0x11;     // (d) PF4 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x11;    //     PF4 is not both edges
  GPIO_PORTF_IEV_R &= ~0x11;    //     PF4 falling edge event
  GPIO_PORTF_ICR_R = 0x11;      // (e) clear flag4
  GPIO_PORTF_IM_R |= 0x11;      // (f) arm interrupt on PF4
  NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R |= 0x40000000;      // (h) enable interrupt 30 in NVIC
}

void init_PortB(void){
  SYSCTL_RCGC2_R |= 0x00000002;     // 1) B clock
  GPIO_PORTB_CR_R = 0x01;           // allow changes to PB0      
  GPIO_PORTB_AMSEL_R = 0x00;        // 3) disable analog function
  GPIO_PORTB_PCTL_R = 0x0000000F;   // 4) GPIO clear bit PCTL  
  GPIO_PORTB_DIR_R &= 0x01;          // 5) PB0 input 
  GPIO_PORTB_AFSEL_R = 0x00;        // 6) no alternate function
  GPIO_PORTB_DEN_R |= 0x01;          // 7) enable digital pins PB0   
																		//0011.1111
	GPIO_PORTB_IS_R &= ~0x01;     // (d) PB0 is edge-sensitive
  GPIO_PORTB_IBE_R |= 0x01;    //     PB0is  both edges
  GPIO_PORTB_ICR_R = 0x01;      // (e) clear flag0 
  GPIO_PORTB_IM_R |= 0x01;      // (f) arm interrupt on PB0
	
	NVIC_PRI0_R = (NVIC_PRI0_R&0XFFFF0FFF) | 0X00008000; // level 4
	NVIC_EN0_R = 0x00000002;      // (h) enable interrupt 2 in NVIC
}


void GPIOPortF_Handler(void){
	//if (GPIO_PORTB_DATA_R ==0x01 ){
		
		if ((GPIO_PORTF_RIS_R & 0x01) == 0x01){ // sw1 is pressed
			GPIO_PORTF_ICR_R = 0x01;
			if (LED == blue)
					reverseDoor = 1;	 	// starts the button loop 
												// and lets code move only when a button pressesd
					//LED = GPIO_PORTF_DATA_R = 0x02; 			// make the light red
		}
		
		else if ((GPIO_PORTF_RIS_R & 0x10) == 0x10){
			GPIO_PORTF_ICR_R = 0x10;
			if (LED == green)
				reverseDoor = 1;
		}
		
		else {
			if((GPIO_PORTF_RIS_R&0x01)==0x01){  // switch 1 is pressed
					GPIO_PORTF_ICR_R = 0x01; // acknowledge flag
				if ( LED == blue) 
					reverseDoor = 0x02;
				}
			}
			
	}

void GPIOPortB_Handler(void){
	/*	
	GPIO_PORTB_ICR_R = 0x01; // acknowledge PB0 
	
	reverseDoor = 1;				 // stops the contnious loop 
													 // and lets code move only when a button pressesd
	LED = GPIO_PORTF_DATA_R = 0x02;  	// make the light red
	*/
	
	GPIO_PORTB_ICR_R = 0x01;
		if ((GPIO_PORTB_DATA_R&0x01)==0x01){
			//GPIO_PORTB_ICR_R = 0x01;
			//GPIO_PORTF_DATA_R = 0x08;
			if (LED == green){
			reverseDoor = 0x00;
			//NVIC_ST_CTRL_R = 0x07;
			}
			else 
				reverseDoor = 0x02;
		}
			
		else{
			if (LED == blue){
			reverseDoor = 0x00;
			}
			else
				
			reverseDoor = 0x01;
		}
	}

void SysTick_Handler(void){
	
	if (reverseDoor){
		
		// turns the settper clockwise
		// ends with the light turning blue
			if(toggle){
				LED = 0;
				flag_red = 1; 
				count += 1; 
				Stepper_CCW(0);
				green_or_blue = 1; 
			}
			
		// this makes it goes counter clockwise 
		// ends with light turning green
			if(~toggle){
				LED = 0;
				Stepper_CW(0);
				flag_red = 1; 
				count += 1; 
				green_or_blue = 0; 
			}
		
	////////////////////////////////
	if (flag_red){
		//togling the lights
			toggle_counter += 1;   // 500 ms is .5 sec

					if (toggle_counter == 150){
							//LED ^= red;
						GPIO_PORTF_DATA_R = (LED == red) ? 0x00:0x02; 
							toggle_counter =0; 
					}	
			}
			
		}
	}

