// 1. Pre-processor Directives Section
// Constant declarations to access port registers using 
// symbolic names instead of addresses
// TExaS.o is the object code for the real-board grader
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "tm4c123gh6pm.h"
#include "PLL.h"

#define GPIO_LOCK_KEY           0x4C4F434B  // Unlocks the GPIO_CR register
#define PF0       (*((volatile uint32_t *)0x40025004))
#define PF4       (*((volatile uint32_t *)0x40025040))
#define SWITCHES  (*((volatile uint32_t *)0x40025044))
#define SW1       0x01                      // on the left side of the Launchpad board
#define SW2       0x10                      // on the right side of the Launchpad board
#define SYSCTL_RCGC2_GPIOF      0x00000020  // port F Clock Gating Control
#define SYSCTL_RCGC2_GPIOB			0x00000002	// port B Clock Gating Control
#define SYSCTL_TCGC2_FPIOA			0x00000001	// port A Clock Gating Control
#define RED       0x02
#define BLUE      0x04
#define GREEN     0x08
#define YELLOW    0x0A
#define SKYBLUE   0x0C
#define WHITE     0x0E
#define CR   0x0D
#define LF   0x0A
#define BS   0x08
#define CONTROL		(*((volatile unsigned long *)0x400053FC)) //GPIO_PORTB_DATA_R
/************************************************************************************************
	FUNCTION CALLS & VARIABLE(S)
************************************************************************************************/
int i = 0;
int number = 0;
int direction = 0;
/************************************************************************************************
	PORT F INIT
************************************************************************************************/
void PortF_Init(void){
	volatile unsigned long delay;
	SYSCTL_RCGCGPIO_R |= 0x00000020;  // 1) activate clock for Port F
  delay = SYSCTL_RCGCTIMER_R;
	GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock GPIO Port F
  GPIO_PORTF_CR_R = 0x1F;           // allow changes to PF4-0
  // only PF0 needs to be unlocked, other bits can't be locked
  GPIO_PORTF_AMSEL_R = 0x00;        // 3) disable analog on PF
  GPIO_PORTF_PCTL_R = 0x00000000;   // 4) PCTL GPIO on PF4-0
  GPIO_PORTF_DIR_R = 0x0E;          // 5) PF4,PF0 in, PF3-1 out
  GPIO_PORTF_AFSEL_R = 0x00;        // 6) disable alt funct on PF7-0
  GPIO_PORTF_DEN_R = 0x1F;          // 7) enable digital I/O on PF4-0
	GPIO_PORTF_PUR_R = 0x1F;          // 7) enable digital I/O on PF4-0
	
	//interrupt for PF0 PF4
  GPIO_PORTF_IS_R    &= ~0x11;  // (d) PF4,PF0 is edge-sensitive
  GPIO_PORTF_IBE_R   &= ~0x11;  //     PF4,PF0 is not both edges
  GPIO_PORTF_IEV_R   &= ~0x11;  //     PF4,PF0 falling edge event
  GPIO_PORTF_ICR_R   |=  0x11;  // (e) clear flags 4,0
  GPIO_PORTF_IM_R    |=  0x11;  // (f) arm interrupt on PF4,PF0
	
	NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00400000; // (g) priority 2
  NVIC_EN0_R = 0x40000000;            // (h) enable interrupt 30 in NVIC
}

void PortB_Init(void){ 
	volatile unsigned long delay;
  SYSCTL_RCGCGPIO_R |= 0x0000002;  // 1) activate clock for Port B
  delay = SYSCTL_RCGCTIMER_R;  
  GPIO_PORTB_CR_R |= 0x3F;           // allow changes to 0       
  GPIO_PORTB_AMSEL_R &= ~0x3F;        // 3) disable analog function
  GPIO_PORTB_PCTL_R &= ~0x00FFFFFF;   // 4) GPIO clear bit PCTL  
  GPIO_PORTB_DIR_R &= ~0x3F;          // 5) PB5-PB0 input
  GPIO_PORTB_AFSEL_R &= ~0x3F;        // 6) no alternate function     
  GPIO_PORTB_DEN_R |= 0x3F;          // 7) enable digital pin PB5-PB0
	

	}

	void PortD_Init(void) { volatile unsigned long delay;
	SYSCTL_RCGCGPIO_R |= 0x0000008;  // 1) activate clock for Port D
  delay = SYSCTL_RCGCTIMER_R;
	GPIO_PORTD_AMSEL_R = 0x00;			  // disable analog function
	GPIO_PORTD_PCTL_R = 0x00000000;   // GPIO clear bit PCTL
	GPIO_PORTD_DIR_R = 0x3F;					// PD5-PD0 Output
	GPIO_PORTD_AFSEL_R = 0x00;				// no alt function
	GPIO_PORTD_DEN_R = 0x3F;					// enable digital pins PD5-PD0
}
/************************************************************************************************
	UNIVERSAL ASYCHRONOUS RECEIVE TRANSMIT - SPEAKING TO SECOND TM4C
************************************************************************************************/

void UART5_Init(void){
	unsigned volatile delay;
	SYSCTL_RCGCUART_R |= 0x0020; 			// activate UART5
	SYSCTL_RCGCGPIO_R |= 0x0010;			// activate GPIOE
	delay = SYSCTL_RCGCGPIO_R;
	UART5_CTL_R &= ~0x0001;						// disable UART5
	UART5_IBRD_R = 325;								// IBRD, 50MHz, 9600 baud rate (50MHz / (16 * 9600))
	UART5_FBRD_R = 33;							  // FBRD, (0.83333 * 64 + .05)
	UART5_LCRH_R = 0x0060;						// 8 bit (no parity, one stop, no FIFOs)
	UART5_CTL_R |= 0x0001; 						// enable UART5
	GPIO_PORTE_AFSEL_R |= 0x30;				// enable alt funct on PE5
	
	GPIO_PORTE_PCTL_R = (GPIO_PORTE_PCTL_R & ~0x00FF0000) | 0x00110000; 
	// configure PE5 as U5Tx
	GPIO_PORTE_AMSEL_R &= ~0x30;			// disable analog funct on PE5
	GPIO_PORTE_DEN_R |= 0x30;					// enable digital I/O on PE5
}

void UART5_Tx(unsigned char data){
	while((UART5_FR_R & 0x0020) != 0);	// wait until TXFF is 0
	UART5_DR_R = data;
}

unsigned char UART5_Rx(void){
		while((UART5_FR_R & 0x0010) != 0){
			if((UART5_FR_R & 0x0010) != 0)
				break;
		}
		return((unsigned char)(UART5_DR_R&0xFF));
}

void UART5_transmit_String(char *MessageString){
    while(*MessageString){
        UART5_Tx(*MessageString);
        MessageString++;
    } //end of while loop
}


/************************************************************************************************
	TIMER
************************************************************************************************/
void Timer0_Init(void){
	unsigned volatile delay;
	SYSCTL_RCGCTIMER_R |= 0x01;				// activate timer 0
	delay = SYSCTL_RCGCTIMER_R;
	TIMER0_CTL_R = 0;									// disable the timer for setup
	TIMER0_CFG_R = 0x04;							// configure for a 16-bit timer mode
	TIMER0_TAMR_R |= 0x01;						// configure for a one shot, count down
	TIMER0_CTL_R |= 0x01;							// enable timer0
}


void delayms(uint16_t time){
	uint16_t x;
	unsigned long volatile delay;
	SYSCTL_RCGCTIMER_R |= 1;	// enable Timer Block 0
	delay =SYSCTL_RCGCTIMER_R;
	for(x=0; x < time; x++){
		TIMER0_TAILR_R = 80000 - 1;	// interval load value of every 1ms
		TIMER0_ICR_R = 0x01;				// clear TimerA timeout flag
		TIMER0_CTL_R = 0x01;			// enable timer A
		while((TIMER0_RIS_R & 0x01) == 0) {
			if((TIMER0_RIS_R & 0x01) == 0)
				break;	// wait for timeout
		}
	}
	TIMER0_ICR_R = 0x1;				// clear TimerA timeout flag	
}

void SysTick_Init(void){
  NVIC_ST_CTRL_R = 0;                   // disable SysTick during setup
  NVIC_ST_RELOAD_R = NVIC_ST_RELOAD_M;  // maximum reload value
  NVIC_ST_CURRENT_R = 0;                // any write to current clears it
                                        // enable SysTick with core clock
  NVIC_ST_CTRL_R = NVIC_ST_CTRL_ENABLE+NVIC_ST_CTRL_CLK_SRC;
}

void SysTick_Wait(unsigned long delay){
  volatile unsigned long elapsedTime;
  unsigned long startTime = NVIC_ST_CURRENT_R;
  do{
    elapsedTime = (startTime-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  }
  while(elapsedTime <= delay);
}



void HighSignal(void) {
	GPIO_PORTD_DATA_R = 0xFF;
	SysTick_Wait(625);
	GPIO_PORTD_DATA_R = 0x00;
	SysTick_Wait(625);
}

void LowSignal(void) {
	GPIO_PORTD_DATA_R = 0x00;
	SysTick_Wait(625);
	GPIO_PORTD_DATA_R = 0x00;
	SysTick_Wait(625);
}

void Logic0(void)	{ 
	for(i = 0; i < 450; i++) {
		HighSignal();
	}
	
	for(i = 0; i < 450; i++) {
		LowSignal();
	}
}

/************************************************************************************************
	MAIN LOOP
************************************************************************************************/

void EnableInterrupts(void);  // Enable interrupts

int main(void){
	PLL_Init();
	PortF_Init();
	PortB_Init();
	PortD_Init();
	UART5_Init();
	SysTick_Init();
	GPIO_PORTF_DATA_R = 0x02;
	UART5_Tx(0); // Delay to allow connection

	EnableInterrupts();
	while(1){
		Logic0();
		
		if ( CONTROL == 0x01) { // Do Nothing
			UART5_Tx('d');
			GPIO_PORTF_DATA_R = 0x02;
		}
		else if ( CONTROL == 0x02) { // Forward
			UART5_Tx('f');
			GPIO_PORTF_DATA_R = 0x04;
		}
		else if ( CONTROL == 0x04) { // Backward
			UART5_Tx('b');
			GPIO_PORTF_DATA_R = 0x08;
		}
		else if ( CONTROL == 0x08) {// Turn Left
			UART5_Tx('l');
			GPIO_PORTF_DATA_R = 0x06;
		}
		else if ( CONTROL == 0x10) {// Turn Right
			UART5_Tx('r');
			GPIO_PORTF_DATA_R = 0x0C;
		}
		else {
			GPIO_PORTF_DATA_R = 0x00;
		}
		
	}
}

void GPIOPortF_Handler(void){  // called on touch of either SW1 or SW2
	if(GPIO_PORTF_RIS_R & 0x10){ // SW1 pressed -- speed
		GPIO_PORTF_ICR_R = 0x10;
		UART5_Tx('c');
		GPIO_PORTF_DATA_R = 0x02;
	}
	SysTick_Wait(20000); // Delays button response
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

