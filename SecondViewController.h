//
//  SecondViewController.h
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController


// measurement sliders
- (IBAction)snowboardHeightSlider:(UISlider *)sender;
- (IBAction)snowboardWeightSlider:(UISlider *)sender;

- (IBAction)snowboardCalculate:(UIButton *)sender; // calculate button

// labels
@property (weak, nonatomic) IBOutlet UILabel *snowboardHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *SnowboardWeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *snowboardSizeLabel;

// measuerment variables
@property float snowboardHeight;
@property float snowboardWeight;

//calculated variables 
@property int snowboardSize;
@property float snowboardCheck;






@end
