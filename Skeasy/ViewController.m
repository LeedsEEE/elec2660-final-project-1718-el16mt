//
//  ViewController.m
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()

@end

@implementation ViewController

{
    NSArray *_pickerData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
       _pickerData = @[@"Beginner", @"Intermediate", @"Advanced"];
    
    self.LevelPicker.delegate = self;
    self.LevelPicker.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)heightSlider:(UISlider *)sender {
        self.heightLabel.text = [NSString stringWithFormat:@"%.2f m", sender.value];
    _height = sender.value;
    
    if (_height<1.49) {
        _heightCategory = 8;
    }
    else if (_height<1.58) {
        _heightCategory = 9;
    }
    else if (_height<1.67) {
        _heightCategory = 10;
    }
    else if (_height<1.79) {
        _heightCategory = 11;
    }
    else if (_height<1.95) {
        _heightCategory = 12;
    }
    else {
        _heightCategory = 13;
    }



}

- (IBAction)weightSlider:(UISlider *)sender {
    self.weightLabel.text = [NSString stringWithFormat:@"%.0f kg", sender.value];
    _weight = sender.value;
    
    if (_weight<14) {
        _weightCategory = 1;
    }
    else if (_weight<18) {
        _weightCategory = 2;
    }
    else if (_weight<22) {
        _weightCategory = 3;
    }
    else if (_weight<26) {
        _weightCategory = 4;
    }
    else if (_weight<31) {
        _weightCategory = 5;
    }
    else if (_weight<36){
        _weightCategory = 6;
    }

}

- (IBAction)ageSlider:(UISlider *)sender {
    self.ageLabel.text = [NSString stringWithFormat:@"%.0f ", sender.value];
}

- (IBAction)bslSlider:(UISlider *)sender {
    self.bslLabel.text = [NSString stringWithFormat:@"%.0f mm", sender.value];
}

- (IBAction)calculateButton:(UIButton *)sender {

}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component;{
    
    return _pickerData[row];
    

}

/* - (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component;{
    
    return
} */

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;{
    return 3;
}





@end
