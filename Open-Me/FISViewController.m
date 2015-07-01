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
    
    
    
    [self.buttonsContainer removeConstraints:self.buttonsContainer.constraints];
    self.buttonsContainer.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.outputContainer removeConstraints:self.outputContainer.constraints];
    self.outputContainer.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    
    NSDictionary *buttonsList = @{@"oneButton":self.oneButton,
                                  @"twoButton":self.twoButton,
                                  @"threeButton":self.threeButton,
                                  @"fourButton":self.fourButton,
                                  @"fiveButton":self.fiveButton,
                                  @"sixButton":self.sixButton,
                                  @"sevenButton":self.sevenButton,
                                  @"eightButton":self.eightButton,
                                  @"nineButton":self.nineButton,
                                  @"additionButton":self.additionButton,
                                  @"subtractionButton":self.subtractionButton,
                                  @"divideButton":self.divideButton,
                                  @"multiplyButton":self.multiplyButton,
                                  @"equalButton":self.equalButton,
                                  @"decimalButton":self.decimalButton,
                                  @"zeroButton":self.zeroButton,
                                  @"textField":self.outputTextField
                                  };
    
    
    NSArray *buttons = @[self.outputTextField,self.oneButton,self.twoButton,self.threeButton,self.fourButton,self.fiveButton,self.sixButton,self.sevenButton,self.eightButton,self.nineButton,self.zeroButton,self.divideButton,self.multiplyButton,self.subtractionButton,self.additionButton,self.equalButton,self.decimalButton];
    
    for (UIButton *button in buttons) {
        button.translatesAutoresizingMaskIntoConstraints = NO;
        [button removeConstraints:button.constraints];
    }
    
    
    NSDictionary *metrics = @{@"buttonsContainer":self.buttonsContainer, @"outputContainer":self.outputContainer, @"padding":@15.0};
    
    NSArray *topContainerConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[outputContainer]|" options:0 metrics:nil views:metrics];

    NSArray *bottomContainerConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[buttonsContainer]|" options:0 metrics:nil views:metrics];

    
    NSArray *allContainersConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[outputContainer(buttonsContainer)][buttonsContainer]|" options:0 metrics:nil views:metrics];
    
    NSArray *VfirstColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[oneButton][fourButton(oneButton)][sevenButton(oneButton)][zeroButton(oneButton)]|" options:0 metrics:nil views:buttonsList];
     NSArray *HfirstColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[oneButton][twoButton(oneButton)][threeButton(oneButton)][divideButton(oneButton)]|" options:0 metrics:nil views:buttonsList];
    
    NSArray *VsecondColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[twoButton][fiveButton(twoButton)][eightButton(twoButton)][decimalButton(twoButton)]|" options:0 metrics:nil views:buttonsList];
    NSArray *HsecondColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[fourButton(twoButton)][fiveButton(twoButton)][sixButton(twoButton)][multiplyButton(twoButton)]|" options:0 metrics:nil views:buttonsList];

    
    NSArray *VthirdColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[threeButton][sixButton(threeButton)][nineButton(threeButton)][equalButton(threeButton)]|" options:0 metrics:nil views:buttonsList];
    NSArray *HthirdColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[sevenButton(threeButton)][eightButton(threeButton)][nineButton(threeButton)][subtractionButton(threeButton)]|" options:0 metrics:nil views:buttonsList];

    NSArray *VfourthColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[divideButton][multiplyButton(divideButton)][subtractionButton(divideButton)][additionButton(divideButton)]|" options:0 metrics:nil views:buttonsList];
    NSArray *HfourthColumnButtonsConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[zeroButton][decimalButton(zeroButton)][equalButton(zeroButton)][additionButton(zeroButton)]|" options:0 metrics:nil views:buttonsList];
    
    
    NSArray *VtextFieldConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[textField]" options:0 metrics:nil views:buttonsList];
    NSArray *HtextFieldConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[textField]-20-|" options:0 metrics:nil views:buttonsList];
    


    
    [self.view addConstraints:allContainersConstraints];
    [self.view addConstraints:bottomContainerConstraint];
    [self.view addConstraints:topContainerConstraint];
    
    [self.buttonsContainer addConstraints:VfirstColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:HfirstColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:VsecondColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:HsecondColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:VthirdColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:HthirdColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:VfourthColumnButtonsConstraints];
    [self.buttonsContainer addConstraints:HfourthColumnButtonsConstraints];
    [self.outputContainer addConstraints:VtextFieldConstraints];
    [self.outputContainer addConstraints:HtextFieldConstraints];

    
    


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
