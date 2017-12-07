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
    
    self.heightLabel.text = [NSString stringWithFormat:@"1.63 m"];
    self.weightLabel.text = [NSString stringWithFormat:@"52 kg"];
    self.ageLabel.text = [NSString stringWithFormat:@"50"];
    self.bslLabel.text = [NSString stringWithFormat:@"292 mm"];
    _dinValue = 3.5;
    _skiLength = 7;
    _height = 1.63;
    _weight = 52;
    _age = 50;
    _bsl = 292;
    _skillCategory = 0;
    
    self.dinLabel.text = [NSString stringWithFormat:@"3.50"];
    self.skiLengthLabel.text = [NSString stringWithFormat:@"150-170"];
                          
    

    
    self.skillInfo.hidden = true;
    self.bslInfo.hidden = true;

    
    
    
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
    
    _addCategory = ((_heightCategory + _weightCategory));
    NSLog (@"height = %d", _heightCategory);
    
    _aveCategory = _addCategory/2;
    _skiCategory = _aveCategory + _skillCategory + _ageCategory;
    
    if (_height<1.33){
        _skiLength =1;
    }
    else if (_height<1.38){
        _skiLength =2;
    }
    else if (_height<1.43){
        _skiLength =3;
    }
    else if (_height<1.48){
        _skiLength =4;
    }
    else if (_height<1.53){
        _skiLength =5;
    }
    else if (_height<1.59){
        _skiLength =6;
    }
    else if (_height<1.64){
        _skiLength =7;
    }
    else if (_height<1.69){
        _skiLength =8;
    }
    else if (_height<1.74){
        _skiLength =9;
    }
    else if (_height<1.79){
        _skiLength =10;
    }
    else if (_height<1.84){
        _skiLength =11;
    }
    else if (_height<1.89){
        _skiLength =12;
    }
    else {
        _skiLength =13;
    }
    
    
    if (_skiCategory == 1){
        if (_bsl < 271){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 2){
        if (_bsl < 271){
            _dinValue =1;
        }
        else if (_bsl < 291){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 3){
        if (_bsl < 271){
            _dinValue =1.25;
        }
        else if (_bsl < 291){
            _dinValue = 1;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 4){
        if (_bsl < 251){
            _dinValue =1.75;
        }
        else if (_bsl < 291){
            _dinValue = 1.5;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 5){
        if (_bsl < 271){
            _dinValue =2;
        }
        else if (_bsl < 291){
            _dinValue = 1.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 6){
        if (_bsl < 271){
            _dinValue =2.5;
        }
        else if (_bsl < 291){
            _dinValue = 2.25;
        }
        else if (_bsl < 311){
            _dinValue = 2;
        }
        else {
            _dinValue = 1.75;
        }
    }
    else if (_skiCategory == 7){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3;
        }
        else if  (_bsl < 331){
            _dinValue = 2.5;
        }
        else if (_bsl < 335){
            _dinValue = 2.25;
        }
        else {
            _dinValue = 2;
        }
    }
    else if (_skiCategory == 8){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3.5;
        }
        else if  (_bsl < 331){
            _dinValue = 3;
        }
        else {
            _dinValue = 2.5;
        }
    }
    else if (_skiCategory == 9){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 4.25;
        }
        else if  (_bsl < 291){
            _dinValue = 4;
        }
        else if (_bsl < 311){
            _dinValue = 3.5;
        }
        else {
            _dinValue = 3.25;
        }
    }
    else if (_skiCategory == 10){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 5;
        }
        else if  (_bsl < 291){
            _dinValue = 4.75;
        }
        else if (_bsl < 331){
            _dinValue = 4.5;
        }
        else {
            _dinValue = 4;
        }
    }
    else if (_skiCategory == 11){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 6;
        }
        else if  (_bsl < 291){
            _dinValue = 5.5;
        }
        else if (_bsl < 311){
            _dinValue = 5.25;
        }
        else if (_bsl < 331){
            _dinValue = 5;
        }
        else {
            _dinValue = 4.75;
        }
    }
    else if (_skiCategory == 12){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 7;
        }
        else if  (_bsl < 291){
            _dinValue = 6.75;
        }
        else if (_bsl < 311){
            _dinValue = 6.25;
        }
        else if (_bsl < 331){
            _dinValue = 6;
        }
        else {
            _dinValue = 5.75;
        }
    }
    else if (_skiCategory == 13){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 8.5;
        }
        else if  (_bsl < 291){
            _dinValue = 8;
        }
        else if (_bsl < 331){
            _dinValue = 7.5;
        }
        else if (_bsl < 331){
            _dinValue = 7;
        }
        else {
            _dinValue = 6.75;
        }
    }
    else if (_skiCategory == 14){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 10;
        }
        else if  (_bsl < 291){
            _dinValue = 9.5;
        }
        else if (_bsl < 331){
            _dinValue = 9;
        }
        else if (_bsl < 331){
            _dinValue = 8.5;
        }
        else {
            _dinValue = 8.25;
        }
    }
    else if (_skiCategory == 15){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 12;
        }
        else if  (_bsl < 291){
            _dinValue = 11.25;
        }
        else if (_bsl < 331){
            _dinValue = 10.75;
        }
        else if (_bsl < 331){
            _dinValue = 10.25;
        }
        else {
            _dinValue = 10;
        }
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
    else if (_weight<42){
        _weightCategory = 7;
    }
    else if (_weight<49) {
        _weightCategory = 8;
    }
    else if (_weight<58) {
        _weightCategory = 9;
    }
    else if (_weight<67) {
        _weightCategory = 10;
    }
    else if (_weight<79) {
        _weightCategory = 11;
    }
    else if (_weight<94){
        _weightCategory = 12;
    }
    else {
        _weightCategory =13;
    }
    
    _addCategory = ((_heightCategory + _weightCategory));
    _aveCategory = _addCategory/2;
    _skiCategory = _aveCategory + _skillCategory + _ageCategory;
     NSLog (@"weight = %d", _weightCategory);
    NSLog (@"addition= %d", _addCategory);
    NSLog (@"average = %d", _aveCategory);
    
    if (_skiCategory == 1){
        if (_bsl < 271){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 2){
        if (_bsl < 271){
            _dinValue =1;
        }
        else if (_bsl < 291){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 3){
        if (_bsl < 271){
            _dinValue =1.25;
        }
        else if (_bsl < 291){
            _dinValue = 1;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 4){
        if (_bsl < 251){
            _dinValue =1.75;
        }
        else if (_bsl < 291){
            _dinValue = 1.5;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 5){
        if (_bsl < 271){
            _dinValue =2;
        }
        else if (_bsl < 291){
            _dinValue = 1.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 6){
        if (_bsl < 271){
            _dinValue =2.5;
        }
        else if (_bsl < 291){
            _dinValue = 2.25;
        }
        else if (_bsl < 311){
            _dinValue = 2;
        }
        else {
            _dinValue = 1.75;
        }
    }
    else if (_skiCategory == 7){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3;
        }
        else if  (_bsl < 331){
            _dinValue = 2.5;
        }
        else if (_bsl < 335){
            _dinValue = 2.25;
        }
        else {
            _dinValue = 2;
        }
    }
    else if (_skiCategory == 8){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3.5;
        }
        else if  (_bsl < 331){
            _dinValue = 3;
        }
        else {
            _dinValue = 2.5;
        }
    }
    else if (_skiCategory == 9){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 4.25;
        }
        else if  (_bsl < 291){
            _dinValue = 4;
        }
        else if (_bsl < 311){
            _dinValue = 3.5;
        }
        else {
            _dinValue = 3.25;
        }
    }
    else if (_skiCategory == 10){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 5;
        }
        else if  (_bsl < 291){
            _dinValue = 4.75;
        }
        else if (_bsl < 331){
            _dinValue = 4.5;
        }
        else {
            _dinValue = 4;
        }
    }
    else if (_skiCategory == 11){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 6;
        }
        else if  (_bsl < 291){
            _dinValue = 5.5;
        }
        else if (_bsl < 311){
            _dinValue = 5.25;
        }
        else if (_bsl < 331){
            _dinValue = 5;
        }
        else {
            _dinValue = 4.75;
        }
    }
    else if (_skiCategory == 12){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 7;
        }
        else if  (_bsl < 291){
            _dinValue = 6.75;
        }
        else if (_bsl < 311){
            _dinValue = 6.25;
        }
        else if (_bsl < 331){
            _dinValue = 6;
        }
        else {
            _dinValue = 5.75;
        }
    }
    else if (_skiCategory == 13){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 8.5;
        }
        else if  (_bsl < 291){
            _dinValue = 8;
        }
        else if (_bsl < 331){
            _dinValue = 7.5;
        }
        else if (_bsl < 331){
            _dinValue = 7;
        }
        else {
            _dinValue = 6.75;
        }
    }
    else if (_skiCategory == 14){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 10;
        }
        else if  (_bsl < 291){
            _dinValue = 9.5;
        }
        else if (_bsl < 331){
            _dinValue = 9;
        }
        else if (_bsl < 331){
            _dinValue = 8.5;
        }
        else {
            _dinValue = 8.25;
        }
    }
    else if (_skiCategory == 15){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 12;
        }
        else if  (_bsl < 291){
            _dinValue = 11.25;
        }
        else if (_bsl < 331){
            _dinValue = 10.75;
        }
        else if (_bsl < 331){
            _dinValue = 10.25;
        }
        else {
            _dinValue = 10;
        }
    }

    


}

- (IBAction)ageSlider:(UISlider *)sender {
    self.ageLabel.text = [NSString stringWithFormat:@"%.0f ", sender.value];
    _age = sender.value;
    if (_age<10) {
        _ageCategory = -1;
    }
    else if (_age<50) {
        _ageCategory = 0;
    }
    else {
        _ageCategory = -1;
    }
    
    _skiCategory = _aveCategory + _skillCategory + _ageCategory;
     NSLog (@"Ski Category = %d", _skiCategory);
    
    if (_skiCategory == 1){
        if (_bsl < 271){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 2){
        if (_bsl < 271){
            _dinValue =1;
        }
        else if (_bsl < 291){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 3){
        if (_bsl < 271){
            _dinValue =1.25;
        }
        else if (_bsl < 291){
            _dinValue = 1;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 4){
        if (_bsl < 251){
            _dinValue =1.75;
        }
        else if (_bsl < 291){
            _dinValue = 1.5;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 5){
        if (_bsl < 271){
            _dinValue =2;
        }
        else if (_bsl < 291){
            _dinValue = 1.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 6){
        if (_bsl < 271){
            _dinValue =2.5;
        }
        else if (_bsl < 291){
            _dinValue = 2.25;
        }
        else if (_bsl < 311){
            _dinValue = 2;
        }
        else {
            _dinValue = 1.75;
        }
    }
    else if (_skiCategory == 7){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3;
        }
        else if  (_bsl < 331){
            _dinValue = 2.5;
        }
        else if (_bsl < 335){
            _dinValue = 2.25;
        }
        else {
            _dinValue = 2;
        }
    }
    else if (_skiCategory == 8){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3.5;
        }
        else if  (_bsl < 331){
            _dinValue = 3;
        }
        else {
            _dinValue = 2.5;
        }
    }
    else if (_skiCategory == 9){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 4.25;
        }
        else if  (_bsl < 291){
            _dinValue = 4;
        }
        else if (_bsl < 311){
            _dinValue = 3.5;
        }
        else {
            _dinValue = 3.25;
        }
    }
    else if (_skiCategory == 10){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 5;
        }
        else if  (_bsl < 291){
            _dinValue = 4.75;
        }
        else if (_bsl < 331){
            _dinValue = 4.5;
        }
        else {
            _dinValue = 4;
        }
    }
    else if (_skiCategory == 11){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 6;
        }
        else if  (_bsl < 291){
            _dinValue = 5.5;
        }
        else if (_bsl < 311){
            _dinValue = 5.25;
        }
        else if (_bsl < 331){
            _dinValue = 5;
        }
        else {
            _dinValue = 4.75;
        }
    }
    else if (_skiCategory == 12){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 7;
        }
        else if  (_bsl < 291){
            _dinValue = 6.75;
        }
        else if (_bsl < 311){
            _dinValue = 6.25;
        }
        else if (_bsl < 331){
            _dinValue = 6;
        }
        else {
            _dinValue = 5.75;
        }
    }
    else if (_skiCategory == 13){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 8.5;
        }
        else if  (_bsl < 291){
            _dinValue = 8;
        }
        else if (_bsl < 331){
            _dinValue = 7.5;
        }
        else if (_bsl < 331){
            _dinValue = 7;
        }
        else {
            _dinValue = 6.75;
        }
    }
    else if (_skiCategory == 14){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 10;
        }
        else if  (_bsl < 291){
            _dinValue = 9.5;
        }
        else if (_bsl < 331){
            _dinValue = 9;
        }
        else if (_bsl < 331){
            _dinValue = 8.5;
        }
        else {
            _dinValue = 8.25;
        }
    }
    else if (_skiCategory == 15){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 12;
        }
        else if  (_bsl < 291){
            _dinValue = 11.25;
        }
        else if (_bsl < 331){
            _dinValue = 10.75;
        }
        else if (_bsl < 331){
            _dinValue = 10.25;
        }
        else {
            _dinValue = 10;
        }
    }


 
}




- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component;{
    
    return _pickerData[row];
    

}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component;{
    NSString *selValue = [_pickerData objectAtIndex:[_LevelPicker selectedRowInComponent:0]];
    NSLog (@"skill = %@", selValue);
    
    if ([selValue isEqualToString:@"Beginner"]) {
        _skillCategory = 0;
    }
    if ([selValue isEqualToString:@"Intermediate"]) {
        _skillCategory = 1;
    }
    if ([selValue isEqualToString:@"Advanced"]) {
        _skillCategory = 2;
    }
    
    NSLog (@"Skill Cat = %d", _skillCategory);
    
    _skiCategory = _aveCategory + _skillCategory + _ageCategory;
    
    NSLog (@"Ski Category = %d", _skiCategory);
    
    if (_skiCategory == 1){
        if (_bsl < 271){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 2){
        if (_bsl < 271){
            _dinValue =1;
        }
        else if (_bsl < 291){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 3){
        if (_bsl < 271){
            _dinValue =1.25;
        }
        else if (_bsl < 291){
            _dinValue = 1;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 4){
        if (_bsl < 251){
            _dinValue =1.75;
        }
        else if (_bsl < 291){
            _dinValue = 1.5;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 5){
        if (_bsl < 271){
            _dinValue =2;
        }
        else if (_bsl < 291){
            _dinValue = 1.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 6){
        if (_bsl < 271){
            _dinValue =2.5;
        }
        else if (_bsl < 291){
            _dinValue = 2.25;
        }
        else if (_bsl < 311){
            _dinValue = 2;
        }
        else {
            _dinValue = 1.75;
        }
    }
    else if (_skiCategory == 7){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3;
        }
        else if  (_bsl < 331){
            _dinValue = 2.5;
        }
        else if (_bsl < 335){
            _dinValue = 2.25;
        }
        else {
            _dinValue = 2;
        }
    }
    else if (_skiCategory == 8){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3.5;
        }
        else if  (_bsl < 331){
            _dinValue = 3;
        }
        else {
            _dinValue = 2.5;
        }
    }
    else if (_skiCategory == 9){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 4.25;
        }
        else if  (_bsl < 291){
            _dinValue = 4;
        }
        else if (_bsl < 311){
            _dinValue = 3.5;
        }
        else {
            _dinValue = 3.25;
        }
    }
    else if (_skiCategory == 10){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 5;
        }
        else if  (_bsl < 291){
            _dinValue = 4.75;
        }
        else if (_bsl < 331){
            _dinValue = 4.5;
        }
        else {
            _dinValue = 4;
        }
    }
    else if (_skiCategory == 11){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 6;
        }
        else if  (_bsl < 291){
            _dinValue = 5.5;
        }
        else if (_bsl < 311){
            _dinValue = 5.25;
        }
        else if (_bsl < 331){
            _dinValue = 5;
        }
        else {
            _dinValue = 4.75;
        }
    }
    else if (_skiCategory == 12){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 7;
        }
        else if  (_bsl < 291){
            _dinValue = 6.75;
        }
        else if (_bsl < 311){
            _dinValue = 6.25;
        }
        else if (_bsl < 331){
            _dinValue = 6;
        }
        else {
            _dinValue = 5.75;
        }
    }
    else if (_skiCategory == 13){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 8.5;
        }
        else if  (_bsl < 291){
            _dinValue = 8;
        }
        else if (_bsl < 331){
            _dinValue = 7.5;
        }
        else if (_bsl < 331){
            _dinValue = 7;
        }
        else {
            _dinValue = 6.75;
        }
    }
    else if (_skiCategory == 14){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 10;
        }
        else if  (_bsl < 291){
            _dinValue = 9.5;
        }
        else if (_bsl < 331){
            _dinValue = 9;
        }
        else if (_bsl < 331){
            _dinValue = 8.5;
        }
        else {
            _dinValue = 8.25;
        }
    }
    else if (_skiCategory == 15){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 12;
        }
        else if  (_bsl < 291){
            _dinValue = 11.25;
        }
        else if (_bsl < 331){
            _dinValue = 10.75;
        }
        else if (_bsl < 331){
            _dinValue = 10.25;
        }
        else {
            _dinValue = 10;
        }
    }

    
    
    
    
    

}

- (IBAction)bslSlider:(UISlider *)sender {
    self.bslLabel.text = [NSString stringWithFormat:@"%.0f mm", sender.value];
    _bsl = sender.value;
    
     _skiCategory = _aveCategory + _skillCategory + _ageCategory;
    
    if (_skiCategory == 1){
        if (_bsl < 271){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 2){
        if (_bsl < 271){
            _dinValue =1;
        }
        else if (_bsl < 291){
            _dinValue = 0.75;
        }
        else {
            _dinValue = 0;
        }
        }
    else if (_skiCategory == 3){
        if (_bsl < 271){
            _dinValue =1.25;
        }
        else if (_bsl < 291){
            _dinValue = 1;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 4){
        if (_bsl < 251){
            _dinValue =1.75;
        }
        else if (_bsl < 291){
            _dinValue = 1.5;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 5){
        if (_bsl < 271){
            _dinValue =2;
        }
        else if (_bsl < 291){
            _dinValue = 1.75;
        }
        else {
            _dinValue = 0;
        }
    }
    else if (_skiCategory == 6){
        if (_bsl < 271){
            _dinValue =2.5;
        }
        else if (_bsl < 291){
            _dinValue = 2.25;
        }
        else if (_bsl < 311){
            _dinValue = 2;
        }
        else {
            _dinValue = 1.75;
        }
    }
    else if (_skiCategory == 7){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3;
        }
        else if  (_bsl < 331){
            _dinValue = 2.5;
        }
        else if (_bsl < 335){
            _dinValue = 2.25;
        }
        else {
            _dinValue = 2;
        }
    }
    else if (_skiCategory == 8){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 3.5;
        }
        else if  (_bsl < 331){
            _dinValue = 3;
        }
        else {
            _dinValue = 2.5;
        }
    }
    else if (_skiCategory == 9){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 4.25;
        }
        else if  (_bsl < 291){
            _dinValue = 4;
        }
        else if (_bsl < 311){
            _dinValue = 3.5;
        }
        else {
            _dinValue = 3.25;
        }
    }
    else if (_skiCategory == 10){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 5;
        }
        else if  (_bsl < 291){
            _dinValue = 4.75;
        }
        else if (_bsl < 331){
            _dinValue = 4.5;
        }
        else {
            _dinValue = 4;
        }
    }
    else if (_skiCategory == 11){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 6;
        }
        else if  (_bsl < 291){
            _dinValue = 5.5;
        }
        else if (_bsl < 311){
            _dinValue = 5.25;
        }
        else if (_bsl < 331){
            _dinValue = 5;
        }
        else {
            _dinValue = 4.75;
        }
    }
    else if (_skiCategory == 12){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 7;
        }
        else if  (_bsl < 291){
            _dinValue = 6.75;
        }
        else if (_bsl < 311){
            _dinValue = 6.25;
        }
        else if (_bsl < 331){
            _dinValue = 6;
        }
        else {
            _dinValue = 5.75;
        }
    }
    else if (_skiCategory == 13){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 8.5;
        }
        else if  (_bsl < 291){
            _dinValue = 8;
        }
        else if (_bsl < 331){
            _dinValue = 7.5;
        }
        else if (_bsl < 331){
            _dinValue = 7;
        }
        else {
            _dinValue = 6.75;
        }
    }
    else if (_skiCategory == 14){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 10;
        }
        else if  (_bsl < 291){
            _dinValue = 9.5;
        }
        else if (_bsl < 331){
            _dinValue = 9;
        }
        else if (_bsl < 331){
            _dinValue = 8.5;
        }
        else {
            _dinValue = 8.25;
        }
    }
    else if (_skiCategory == 15){
        if (_bsl < 251){
            _dinValue = 0;
        }
        else if (_bsl < 271){
            _dinValue = 12;
        }
        else if  (_bsl < 291){
            _dinValue = 11.25;
        }
        else if (_bsl < 331){
            _dinValue = 10.75;
        }
        else if (_bsl < 331){
            _dinValue = 10.25;
        }
        else {
            _dinValue = 10;
        }
    }
    
    
       NSLog (@"Din = %f", _dinValue);
}




- (IBAction)calculateButton:(UIButton *)sender {
    
    _skiCategory = _aveCategory + _skillCategory + _ageCategory;
    
    if (_dinValue > 0){
        self.dinLabel.text = [NSString stringWithFormat:@"%.2f", _dinValue];
    }
    else {
        self.dinLabel.text = [NSString stringWithFormat:@"Error"];
        
    }
    
    
    if (_skiLength == 1){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"115-130"];
    }
    else if (_skiLength == 2){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"125-140"];
    }
    else if (_skiLength == 3){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"130-145"];
    }
    else if (_skiLength == 4){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"135-150"];
    }
    else if (_skiLength == 5){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"135-155"];
    }
    else if (_skiLength == 6){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"145-165"];
    }
    else if (_skiLength == 7){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"150-170"];
    }
    else if (_skiLength == 8){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"155-175"];
    }
    else if (_skiLength == 9){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"160-180"];
    }
    else if (_skiLength == 10){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"165-180"];
    }
    else if (_skiLength == 11){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"170-190"];
    }
    else if (_skiLength == 12){
        self.skiLengthLabel.text = [NSString stringWithFormat:@"175-195"];
    }
    else{
        self.skiLengthLabel.text = [NSString stringWithFormat:@"180-200"];
    }
}

    


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;{
    return 3;
}





- (IBAction)skillInfoButton:(UIButton *)sender {
    
    if (self.skillInfo.hidden == false){
        self.skillInfo.hidden = true;

    }
    else if (self.skillInfo.hidden == true){
        self.skillInfo.hidden = false;

    }
    
    
    
}
- (IBAction)bslInfo:(UIButton *)sender {
    if (self.bslInfo.hidden == false){
        self.bslInfo.hidden = true;
        
    }
    else if (self.bslInfo.hidden == true){
        self.bslInfo.hidden = false;
        
    }
    
    
    
}
@end
