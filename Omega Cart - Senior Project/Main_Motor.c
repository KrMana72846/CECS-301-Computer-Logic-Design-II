
// 1. Pre-processor Directives Section
// Constant declarations to access port registers using 
// symbolic names instead of addresses
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "PLL.h"

#define GPIO_LOCK_KEY           0x4C4F434B 


#define SYSCTL_RCC_USEPWMDIV    0x00100000  // Enable PWM Clock Divisor
#define SYSCTL_RCC_PWMDIV_M     0x000E0000  // PWM Unit Clock Divisor
#define SYSCTL_RCC_PWMDIV_2     0x00000000  // /2

#define ten_mil        16000
#define half_duty      8000
#define percent_30     4800
#define percent_60		 9600
#define percent_80		 12800
#define percent_98		 15680

#define green          0x08
#define red						 0x02
#define blue					 0x04
#define	pink					 0x06
#define white					 0x0E
#define light 				 GPIO_PORTF_DATA_R
#define direction      GPIO_PORTA_DATA_R
#define forward        0x23	//0x30
#define backward			 0x18			//0x0C
#define left					 0x30
#define right					 0x0C

// 2. Declarations Section
//   Global Variables
uint16_t period, duty, step;  
unsigned char read;

//   Function Prototypes
void EnableInterrupts(void);  // Enable interrupts
void PortF_Init(void);
void PortA_Init(void);
//void PortB_Init(void);
void PWM1A_Init(uint16_t period, uint16_t duty);
void PWM1B_Init(uint16_t period, uint16_t duty);
void delay(void);
void delay1(void);
void speed_change(void); 
void PWM1A_Duty (uint16_t duty);
void PWM1B_Duty (uint16_t duty);
void UART5_Init(void);
void Timer0_Init(void);
unsigned char UART5_Rx(void);
void delayms(uint16_t time);
void UART5_Tx(unsigned char data);

// 3. Subroutines Section
// MAIN: Mandatory for a C Program to be executable
int main(void){    
	PLL_Init();
	PortF_Init();
	PortA_Init();
	//PortB_Init();
	UART5_Init();
	Timer0_Init();
	PWM1A_Init(ten_mil,0);
	PWM1B_Init(ten_mil,0); 
	direction = forward;
	step = 0; 
	light = red;
//	UART5_Tx('j');
	EnableInterrupts();
  while(1){};
} 

// L range: 1600, 3200, 4800, 6400, 8000, 9600, 11200, 12800, 14400
// power:   10%   20%   30%   40%   50%   60%   70%    80%    90%
void pwm_check(void) {
	if(step == 1){
		if(direction & forward){
			light = blue;
		}else if (direction & backward){
			light = green;
		}
		PWM1A_Duty(percent_30);
		PWM1B_Duty(percent_30);
	}else if (step == 2){
		PWM1A_Duty(percent_60);
		PWM1B_Duty(percent_60);
	}else if(step == 3){
		PWM1A_Duty(percent_80);
		PWM1B_Duty(percent_80);
	}else if(step == 4){
		PWM1A_Duty(percent_98);
		PWM1B_Duty(percent_98);
	}else if(step == 5){
		PWM1A_Duty(0);
		PWM1B_Duty(0);
		light = red;
		step = 0;
	}
}
void speed_change(void){
	step = step + 1;
	pwm_check();
	
}
void GPIOPortF_Handler(void){  // called on touch of either SW1 or SW2
	if(GPIO_PORTF_RIS_R&0x01){// SW2 pressed -- direction
		GPIO_PORTF_ICR_R = 0x01;
		if (direction == left) {
			direction = forward;
			light = blue;
		}
		else if (direction == right) {
			direction = forward;
			light = blue;
		}
		else {
			direction = direction ^0x3C;
			if(direction & forward){
				light = blue;
			}else if(direction & backward){
				light = green;
			}
		}
	}

	if(GPIO_PORTF_RIS_R & 0x10){ // SW1 pressed -- speed
	  GPIO_PORTF_ICR_R = 0x10;
		speed_change();
	}
	delayms(59999);
}

void UART5_Handler(void) {
		read = UART5_Rx();
		
		if(read == 'd'){ // Do Nothing
			GPIO_PORTF_DATA_R = 0x02;
			step = 5;
			pwm_check();
		}
		
		else if(read == 'f'){ // Forward
			GPIO_PORTF_DATA_R = 0x04;
			direction = forward;
			pwm_check();
		}
		else if(read == 'b'){ // Backward
			GPIO_PORTF_DATA_R = 0x08;
			direction = backward;
			pwm_check();
		}
		else if(read == 'l'){ // Left
			GPIO_PORTF_DATA_R = 0x06;
			//direction = left;
			pwm_check();
			PWM1A_Duty(0);
		}
		else if(read == 'r'){ // Right
			GPIO_PORTF_DATA_R = 0x0E;
			//direction = right;
			pwm_check();
			PWM1B_Duty(0);
		}
		else if(read == 'c'){ // Change Speed
			speed_change();
		}
		
		UART5_ICR_R=UART_ICR_RXIC;//clear interrupt
}	

void PortA_Init(void){
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= 0x00000001;
	delay = SYSCTL_RCGC2_R;				//delay
	GPIO_PORTA_LOCK_R = GPIO_LOCK_KEY;
  
	GPIO_PORTA_CR_R    |=  0x3C;
	GPIO_PORTA_AMSEL_R &=  0x3C;
	GPIO_PORTA_DIR_R   |=  0x3C;  //PA0,1,2,3 output
	GPIO_PORTA_AFSEL_R &= ~0x3C;  //Regular I/O
	GPIO_PORTA_PCTL_R  &= ~0x3C;  //GPIO
	GPIO_PORTA_PUR_R   &= ~0x3C;  //no pull-up res
	GPIO_PORTA_DEN_R   |=  0x3C;

	
}
void PWM1A_Init(uint16_t period, uint16_t duty){
	volatile unsigned long delay;
	SYSCTL_RCGCPWM_R  |= 0x02;           // 1) activate PWM1
  SYSCTL_RCGCGPIO_R |= 0x01;           // 2) activate port A
	delay = SYSCTL_RCGCGPIO_R;
	//while((SYSCTL_PRGPIO_R&0x01) == 0){}
		
	GPIO_PORTA_AFSEL_R |=  0x40;         //PA6 alt funct	
	GPIO_PORTA_PCTL_R  &= ~0x0F000000;  
	GPIO_PORTA_PCTL_R	 |=  0x05000000;	 //PA6 as PWM1
	
	GPIO_PORTA_AMSEL_R &= ~0x40;         //disable analog PA6
	GPIO_PORTA_DEN_R   |=  0x40;				 //digital I/O PA6
	
	SYSCTL_RCC_R = 0x00100000 |          // 3) use PWM divider
      (SYSCTL_RCC_R & (~0x000E0000));  // configure for /2 divider	
			
	PWM1_1_CTL_R  = 0;									 //reload down-count mode									
	PWM1_1_GENA_R = 0xC8;                //low on LOAD, high on CMPA
		
	PWM1_1_LOAD_R  = period - 1;         
	PWM1_1_CMPA_R  = duty - 1;	
	PWM1_1_CTL_R  |= 0x00000001;				 //start PWM1
	PWM1_ENABLE_R |= 0x00000004;         //enable PA6, M1PWM2
}
void PWM1A_Duty (uint16_t duty){
	PWM1_1_CMPA_R = duty-1;
}
void PWM1B_Init(uint16_t period, uint16_t duty){
	volatile unsigned long delay;
	SYSCTL_RCGCPWM_R  |= 0x02;
	SYSCTL_RCGCGPIO_R |= 0x01;
	delay = SYSCTL_RCGCGPIO_R;
	
	GPIO_PORTA_AFSEL_R |=  0x80;				 //PA7 alt funct
	GPIO_PORTA_PCTL_R  &= ~0xF0000000;   
	GPIO_PORTA_PCTL_R  |=  0x50000000;   //PA7 as PWM1
	GPIO_PORTA_AMSEL_R &= ~0x80;         //disable analog PA7
	GPIO_PORTA_DEN_R   |=  0x80;         //digital I/O PA7
	
	SYSCTL_RCC_R |= SYSCTL_RCC_USEPWMDIV; // 3) use PWM divider
  SYSCTL_RCC_R &= ~SYSCTL_RCC_PWMDIV_M; //    clear PWM divider field
  SYSCTL_RCC_R += SYSCTL_RCC_PWMDIV_2;  //    configure for /2 divider
	
	PWM1_1_CTL_R  = 0;                    //reload down-count mode	
	PWM1_1_GENB_R = 0xC08;                //low on LOAD, high on CMPA
	
	PWM1_1_LOAD_R  = period - 1;
	PWM1_1_CMPB_R  = duty - 1;
	PWM1_1_CTL_R  |= 0x00000001;				 	//start PWM1
	PWM1_ENABLE_R |= 0x00000008;         	//enable PA6, M1PWM2
}

void PWM1B_Duty (uint16_t duty){
	PWM1_1_CMPB_R = duty-1;
}
void PortF_Init(void){
	volatile unsigned long delay;
	duty = half_duty;             //PortF clock
	SYSCTL_RCGC2_R |= 0x00000020;
	delay = SYSCTL_RCGC2_R;				//delay
	GPIO_PORTF_LOCK_R = GPIO_LOCK_KEY;
	
	GPIO_PORTF_CR_R    |=  0x1F;
	GPIO_PORTF_AMSEL_R &=  0x1F;
	GPIO_PORTF_DIR_R   &= ~0x11;	//PF4 & PF0 input sw		
	GPIO_PORTF_DIR_R   |=  0x0E;  //PF1,2,3 output LED
	GPIO_PORTF_AFSEL_R &= ~0x1F;  //Regular I/O
	GPIO_PORTF_PCTL_R  &= ~0x1F;  //GPIO
	GPIO_PORTF_PUR_R   |=  0x11;  //pull-up res for PF4, PF0
	GPIO_PORTF_DEN_R   |=  0x1F;
	
	//interrupt for PF0 PF4
  GPIO_PORTF_IS_R    &= ~0x11;  // (d) PF4,PF0 is edge-sensitive
  GPIO_PORTF_IBE_R   &= ~0x11;  //     PF4,PF0 is not both edges
  GPIO_PORTF_IEV_R   &= ~0x11;  //     PF4,PF0 falling edge event
  GPIO_PORTF_ICR_R   |=  0x11;  // (e) clear flags 4,0
  GPIO_PORTF_IM_R    |=  0x11;  // (f) arm interrupt on PF4,PF0
	
	NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00400000; // (g) priority 2
  NVIC_EN0_R = 0x40000000;            // (h) enable interrupt 30 in NVIC
	
}


void UART5_Init(void){
	SYSCTL_RCGCUART_R |= 0x0020; 			// activate UART5
	SYSCTL_RCGCGPIO_R |= 0x0010;			// activate GPIOE
	GPIO_PORTE_DEN_R |= 0x30;					// enable digital I/O on PE5
	GPIO_PORTE_AMSEL_R &= ~0x30;			// disable analog funct on PE5
	GPIO_PORTE_AFSEL_R |= 0x30;				// enable alt funct on PE5
	GPIO_PORTE_PCTL_R = (GPIO_PORTE_PCTL_R & ~0x00FF0000) | 0x00110000; 
	
	
	//delay = SYSCTL_RCGCGPIO_R;
	UART5_CTL_R &= ~0x0001;						// disable UART5
	UART5_IBRD_R = 325;								// IBRD, 50MHz, 9600 baud rate (50MHz / (16 * 9600))
	UART5_FBRD_R = 33;							  // FBRD, (0.83333 * 64 + .05)
	UART5_LCRH_R = 0x0060;						// 8 bit (no parity, one stop, no FIFOs)
	UART5_CTL_R |= 0x0001; 						// enable UART5
  //UART5_IM_R =  0x00000010;                // turn-on RX interrupt
	UART5_IM_R = UART_IM_RXIM; 
	NVIC_EN1_R |= 1 << 29;
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

void UART5_OutUDec(unsigned long n){
// This function uses recursion to convert decimal number
//   of unspecified length as an ASCII string
	//unsigned char key = 0x00;
  if(n >= 10){
    UART5_OutUDec(n/10);
    n = n%10;
  }
	//while(key != 'A'){
		UART5_Tx(n+'0'); /* n is between 0 and 9 */
		//key = UART5_Rx();
	//
}

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
