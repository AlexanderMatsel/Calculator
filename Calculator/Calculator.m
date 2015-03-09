//
//  Calculator.m
//  Calculator
//
//  Created by Alexander on 08.12.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator


- (void)setOperand:(double)digit
{
    operand = digit;
}

- (double)setOperation:(NSString *)operation
{
    
    [self doubleOperation];
    firstOperation = operation;
    firstOperand = operand;

    return operand;
}

-(void)doubleOperation 
{
    if ([@"+" isEqual:firstOperation])
    {
        operand = firstOperand + operand;
    }
    
    else if ([@"-" isEqual:firstOperation])
    {
        operand = firstOperand - operand;
    }
    
}

@end
