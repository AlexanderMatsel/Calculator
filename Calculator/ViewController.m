//
//  ViewController.m
//  Calculator
//
//  Created by Alexander on 05.12.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    NSString *temp;
    int operationType;
    double result;
}

@end

@implementation ViewController

@synthesize display, button1, button0, button2, button3, button4, button5, button6, button7, button8,button9, buttonC, buttonDot, buttonEquals, buttonMinus, buttonPlus, buttonRemove;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(Calculator *)calculator
{
    if (!calculator) calculator = [[Calculator alloc] init];
    return calculator;
}

-(IBAction)clickRemove:(id)sender
{
    [display setText:@"0"];
}

-(IBAction)operationPressed:(UIButton *)sender
{
    if (print)
    {
        [[self calculator] setOperand:[[display text] doubleValue]];
        print = NO;
    }
    NSString *operation = [[sender titleLabel] text];
    result = [[self calculator] setOperation:operation];
    [display setText: [NSString stringWithFormat:@"%g", result]];
}

-(IBAction)numberPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    
    if (print)
    
    {
        [display setText:[[display text] stringByAppendingString:digit]];
    }
    else
    {
        [display setText:digit];
        print = YES;
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(NSUInteger) supportedInterfaceOrientations
{
    
    return UIInterfaceOrientationMaskAll;
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation duration:(NSTimeInterval)duration
{
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft
        || interfaceOrientation == UIInterfaceOrientationLandscapeRight)
    {
        
        display.frame = CGRectMake(139, 37, 211, 33);
        button1.frame = CGRectMake(135, 209, 46, 30);
        button2.frame = CGRectMake(194, 209, 46, 30);
        button3.frame = CGRectMake(262, 209, 46, 30);
        button4.frame = CGRectMake(132, 171, 46, 30);
        button5.frame = CGRectMake(194, 171, 46, 30);
        button6.frame = CGRectMake(262, 171, 46, 30);
        button7.frame = CGRectMake(132, 142, 46, 30);
        button8.frame = CGRectMake(194, 142, 46, 30);
        button9.frame = CGRectMake(262, 142, 46, 30);
        buttonMinus.frame = CGRectMake(311, 142, 46, 30);
        buttonPlus.frame = CGRectMake(311, 171, 46, 30);
        buttonEquals.frame = CGRectMake(311, 217, 46, 56);
        buttonDot.frame = CGRectMake(194, 242, 46, 30);
        button0.frame = CGRectMake(132, 242, 46, 30);
        buttonC.frame = CGRectMake(132, 106, 46, 30);
        
    }
}


@end


























