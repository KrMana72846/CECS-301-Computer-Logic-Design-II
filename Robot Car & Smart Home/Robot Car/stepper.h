// Stepper.h
// Author: Kenny Khut
// Date: May 3, 2019
// Provide functions that step the motor once clockwise, step
// once counterclockwise, and initialize the stepper motor
// interface.

#include <stdint.h>

// Initialize Stepper interface
void Stepper_Init(void);

// Directions the stepper motor car moves
// delay is the time to wait after each step in bus cycles
void Stepper_Left(uint32_t delay);
void Stepper_Right(uint32_t delay);
void Stepper_Forward(uint32_t delay);
void Stepper_Backward(uint32_t delay);

// Turn stepper motor to desired position
// (0 <= desired <= 199)
// time is the number of bus cycles to wait after each step
void Stepper_Seek(uint8_t desired, uint32_t time);

