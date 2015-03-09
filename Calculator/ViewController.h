//
//  ViewController.h
//  Calculator
//
//  Created by Alexander on 05.12.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *display;
    Calculator *calculator;
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    UIButton *button7;
    UIButton *button8;
    UIButton *button9;
    UIButton *button0;
    UIButton *buttonC;
    UIButton *buttonPlus;
    UIButton *buttonMinus;
    UIButton *buttonEquals;
    UIButton *buttonDot;
    BOOL print; // Переменная для отслеживания ввода, для решения проблемы с вводом больше, чем однозначного операнда. Если True - значит надо прикрепить цифру на дисплей. Если False, то добавить цифру на дисплей.
    
}
@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, retain) IBOutlet UIButton *button4;
@property (nonatomic, retain) IBOutlet UIButton *button5;
@property (nonatomic, retain) IBOutlet UIButton *button6;
@property (nonatomic, retain) IBOutlet UIButton *button7;
@property (nonatomic, retain) IBOutlet UIButton *button8;
@property (nonatomic, retain) IBOutlet UIButton *button9;
@property (nonatomic, retain) IBOutlet UIButton *button0;
@property (nonatomic, retain) IBOutlet UIButton *buttonC;
@property (nonatomic, retain) IBOutlet UIButton *buttonRemove;
@property (nonatomic, retain) IBOutlet UIButton *buttonPlus;
@property (nonatomic, retain) IBOutlet UIButton *buttonMinus;
@property (nonatomic, retain) IBOutlet UIButton *buttonEquals;
@property (nonatomic, retain) IBOutlet UIButton *buttonDot;

@property (nonatomic, retain) IBOutlet UILabel *display;

-(IBAction)numberPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@end
