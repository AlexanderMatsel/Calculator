//
//  Calculator.h
//  Calculator
//
//  Created by Alexander on 08.12.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    double operand;
    NSString *firstOperation; // Переменные для запоминания первого оператора и операнда
    double firstOperand;
    double result;
}

-(void)setOperand:(double)digit; // Сеттер для операнда
-(double)setOperation:(NSString *)operation;
-(void) doubleOperation; // Метод для выполнения действий, если не один оператор

@end
