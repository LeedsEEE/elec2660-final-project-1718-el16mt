//
//  SecondViewController.h
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

- (IBAction)snowboardHeightSlider:(UISlider *)sender;
- (IBAction)snowboardWeightSlider:(UISlider *)sender;
- (IBAction)snowboardCalculate:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *snowboardHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *SnowboardWeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *snowboardSizeLabel;

@property float snowboardHeight;
@property float snowboardWeight;
@property float snowboardSize;






@end
