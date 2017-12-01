//
//  ViewController.h
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *bslLabel;
@property (weak, nonatomic) IBOutlet UILabel *skiLengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *dinLabel;

- (IBAction)heightSlider:(UISlider *)sender;
- (IBAction)weightSlider:(UISlider *)sender;
- (IBAction)ageSlider:(UISlider *)sender;
- (IBAction)bslSlider:(UISlider *)sender;
- (IBAction)calculateButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIPickerView *LevelPicker;
@property NSInteger row;
@property NSInteger *skillSelected;

@property float height;
@property float weight;
@property float age;
@property float bsl;

@property int aveCategory;
@property int heightCategory;
@property int weightCategory;
@property int addCategory;
@property int ageCategory;
@property int skillCategory;
@property int skiCategory;





@end

