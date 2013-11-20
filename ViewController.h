//
//  ViewController.h
//  LabelColors
//
//  Created by Matthew Chiappa on 7/9/13.
//  Copyright (c) 2013 Matthew Chiappa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *colorLabel;
@property (nonatomic, strong) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *numLabel;

@property (strong, nonatomic) IBOutlet UIButton *redOutlet;
@property (strong, nonatomic) IBOutlet UIButton *blueOutlet;
@property (strong, nonatomic) IBOutlet UIButton *greenOutlet;
@property (strong, nonatomic) IBOutlet UIButton *yellowOutlet;

@property (strong, nonatomic) IBOutlet UIButton *anewButton;

-(IBAction) redButton:(UIButton *)sender;
-(IBAction) blueButton:(UIButton *)sender;
-(IBAction) greenButton:(UIButton *)sender;
-(IBAction) yellowButton:(UIButton *)sender;

- (IBAction) newButton:(UIButton *)sender;

-(void) labelResponse: (BOOL)answer;
-(void) score: (NSInteger) num;
-(void) userInteractionIsNo;
-(void) userInteractionIsYes;

@end
