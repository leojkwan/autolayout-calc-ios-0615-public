//
//  FISViewController.m
//  Open-Me
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIView *buttonsContainer;
@property (weak, nonatomic) IBOutlet UIView *outputContainer;
@property (weak, nonatomic) IBOutlet UITextField *outputTextField;


@property (strong, nonatomic) IBOutlet UIButton *oneButton;
@property (strong, nonatomic) IBOutlet UIButton *twoButton;
@property (strong, nonatomic) IBOutlet UIButton *threeButton;
@property (strong, nonatomic) IBOutlet UIButton *fourButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveButton;
@property (strong, nonatomic) IBOutlet UIButton *sixButton;
@property (strong, nonatomic) IBOutlet UIButton *sevenButton;
@property (strong, nonatomic) IBOutlet UIButton *eightButton;
@property (strong, nonatomic) IBOutlet UIButton *nineButton;
@property (strong, nonatomic) IBOutlet UIButton *zeroButton;
@property (strong, nonatomic) IBOutlet UIButton *divideButton;
@property (strong, nonatomic) IBOutlet UIButton *multiplyButton;
@property (strong, nonatomic) IBOutlet UIButton *subtractionButton;
@property (strong, nonatomic) IBOutlet UIButton *additionButton;
@property (strong, nonatomic) IBOutlet UIButton *equalButton;
@property (strong, nonatomic) IBOutlet UIButton *decimalButton;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setLongFormConstraints];
    
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)setLongFormConstraints {
    [self.buttonsContainer removeConstraints:self.view.constraints];
    self.buttonsContainer.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.outputContainer removeConstraints:self.view.constraints];
    self.outputContainer.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    
    
    
    NSDictionary *containers = @{@"buttonsContainer":self.buttonsContainer, @"outputContainer":self.outputContainer};
    
    NSArray *topContainerConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[outputContainer]|" options:0 metrics:nil views:containers];

    NSArray *bottomContainerConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[buttonsContainer]|" options:0 metrics:nil views:containers];

    
    NSArray *containerConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[outputContainer(buttonsContainer)][buttonsContainer]|" options:0 metrics:nil views:containers];
    
    [self.view addConstraints:containerConstraints];
    [self.view addConstraints:bottomContainerConstraint];
    [self.view addConstraints:topContainerConstraint];


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
