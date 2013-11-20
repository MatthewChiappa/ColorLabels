//
//  ViewController.m
//  LabelColors
//
//  Created by Matthew Chiappa on 7/9/13.
//  Copyright (c) 2013 Matthew Chiappa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSString *colorString;
    NSMutableArray *colorArray;
    BOOL userIsCorrect;
    NSInteger scoreCount;
}

@end

@implementation ViewController

@synthesize colorLabel = _colorLabel;
@synthesize answerLabel = _answerLabel;
@synthesize redOutlet = _redOutlet, blueOutlet = _blueOutlet,
greenOutlet = _greenOutlet, yellowOutlet =_yellowOutlet, anewButton =_newButton ;

-(IBAction) redButton:(UIButton *) sender{
    colorString = [NSString stringWithFormat:@"Red"];
    if(self.colorLabel.textColor == [colorArray objectAtIndex:0]){
        userIsCorrect = YES;
    }
    else if (self.colorLabel.textColor != [colorArray objectAtIndex:0]){
        userIsCorrect = NO;
    }
    [self labelResponse: userIsCorrect];
    [self userInteractionIsNo];
}

-(IBAction) blueButton:(UIButton *) sender{
    colorString = [NSString stringWithFormat:@"Blue"];
    if(self.colorLabel.textColor == [colorArray objectAtIndex:1]){
        userIsCorrect = YES;
    }
    else if (self.colorLabel.textColor != [colorArray objectAtIndex:1]){
        userIsCorrect = NO;
    }
    [self labelResponse: userIsCorrect];
    [self userInteractionIsNo];
}

-(IBAction) greenButton:(UIButton *) sender{
    colorString = [NSString stringWithFormat:@"Green"];
    if(self.colorLabel.textColor == [colorArray objectAtIndex:2]){
        userIsCorrect = YES;
    }
    else if (self.colorLabel.textColor != [colorArray objectAtIndex:2]){
        userIsCorrect = NO;
    }
    [self labelResponse: userIsCorrect];
    [self userInteractionIsNo];
}

-(IBAction) yellowButton:(UIButton *) sender{
    colorString = [NSString stringWithFormat:@"Yellow"];
    if(self.colorLabel.textColor == [colorArray objectAtIndex:3]){
        userIsCorrect = YES;
    }
    else if (self.colorLabel.textColor != [colorArray objectAtIndex:3]){
        userIsCorrect = NO;
    }
    [self labelResponse: userIsCorrect];
    [self userInteractionIsNo];
}

- (IBAction)newButton:(UIButton *) sender{
    NSUInteger randomIndex = arc4random() % [colorArray count];
    self.colorLabel.textColor = [colorArray objectAtIndex:randomIndex];
    userIsCorrect = NO;
    self.answerLabel.text = @" ";
    [self userInteractionIsYes];
    _newButton.userInteractionEnabled = NO;
}

-(void) labelResponse: (BOOL) answer{
    self.answerLabel.textColor = self.colorLabel.textColor;
    
    if (userIsCorrect == YES) {
        self.answerLabel.text = @"Correct";
        scoreCount++;
        [self score: scoreCount];
    }
    else if(userIsCorrect != YES){
        self.answerLabel.text = @"Incorrect";
    }
    _newButton.userInteractionEnabled = YES;
}

-(void) score: (NSInteger) num{
    self.numLabel.text = [NSString stringWithFormat:@"%ld", (long)scoreCount];
}

-(void) userInteractionIsNo{
    _redOutlet.userInteractionEnabled = NO;
    _blueOutlet.userInteractionEnabled = NO;
    _greenOutlet.userInteractionEnabled = NO;
    _yellowOutlet.userInteractionEnabled = NO;
}

-(void) userInteractionIsYes{
    _redOutlet.userInteractionEnabled = YES;
    _blueOutlet.userInteractionEnabled = YES;
    _greenOutlet.userInteractionEnabled = YES;
    _yellowOutlet.userInteractionEnabled = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    colorArray = [[NSMutableArray alloc] init];
    
    UIColor *red = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    UIColor *blue = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
    UIColor *green = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
    UIColor *yellow = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
    [colorArray addObject: red];
    [colorArray addObject: blue];
    [colorArray addObject: green];
    [colorArray addObject: yellow];
    NSUInteger randomIndex = arc4random() % [colorArray count];
    
    self.colorLabel.textColor = [colorArray objectAtIndex:randomIndex];
    _newButton.userInteractionEnabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end