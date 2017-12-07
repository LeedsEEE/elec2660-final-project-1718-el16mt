//
//  ViewController.h
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

// measurement labels
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *bslLabel;
@property (weak, nonatomic) IBOutlet UILabel *skiLengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *dinLabel;


// measurement sliders
- (IBAction)heightSlider:(UISlider *)sender;
- (IBAction)weightSlider:(UISlider *)sender;
- (IBAction)ageSlider:(UISlider *)sender;
- (IBAction)bslSlider:(UISlider *)sender;


- (IBAction)calculateButton:(UIButton *)sender;

// picker and variables
@property (weak, nonatomic) IBOutlet UIPickerView *LevelPicker;
@property NSInteger row;
@property NSInteger *skillSelected;

//measurement variables
@property float height;
@property float weight;
@property float age;
@property float bsl;

//category variables
@property int aveCategory;
@property int heightCategory;
@property int weightCategory;
@property int addCategory;
@property int ageCategory;
@property int skillCategory;
@property int skiCategory;

// calculated variables
@property float dinValue;
@property float skiLength;


// info and buttons
@property (weak, nonatomic) IBOutlet UIImageView *skillInfo;
- (IBAction)skillInfoButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *DINInfo;

@property (weak, nonatomic) IBOutlet UIImageView *bslInfo;
- (IBAction)bslInfo:(UIButton *)sender;

- (IBAction)DINInfo:(UIButton *)sender;


@end

