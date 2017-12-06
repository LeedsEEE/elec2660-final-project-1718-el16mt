//
//  SecondViewController.m
//  Skeasy
//
//  Created by Matthew Tuplin [el16mt] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)snowboardHeightSlider:(UISlider *)sender {
    self.snowboardHeightLabel.text = [NSString stringWithFormat:@"%.2f m", sender.value];
    _snowboardHeight = sender.value;
    
    if (_snowboardHeight < 1.51){
        if (_snowboardWeight < 50){
            _snowboardSize = 1.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 1.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 1.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 1.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 1.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 1.6;
        }
        else {
            _snowboardSize = 1.7;
        }
        
        
        
    }
    
    else if (_snowboardHeight < 1.7){
        if (_snowboardWeight < 50){
            _snowboardSize = 2.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 2.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 2.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 2.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 2.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 2.6;
        }
        else {
            _snowboardSize = 2.7;
        }
        
    
    }
    
    else if (_snowboardHeight < 1.8542){
        if (_snowboardWeight < 50){
            _snowboardSize = 3.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 3.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 3.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 3.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 3.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 3.6;
        }
        else {
            _snowboardSize = 3.7;
        }
    }
    else if (_snowboardHeight < 1.9558){
        if (_snowboardWeight < 50){
            _snowboardSize = 4.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 4.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 4.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 4.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 4.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 4.6;
        }
        else {
            _snowboardSize = 4.7;
        }
    }
    else{
        if (_snowboardWeight < 50){
            _snowboardSize = 5.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 5.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 5.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 5.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 5.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 5.6;
        }
        else {
            _snowboardSize = 5.7;
        }
    }
     NSLog(@"SNowboard height = %f", _snowboardHeight);
}

- (IBAction)snowboardWeightSlider:(UISlider *)sender {
    self.SnowboardWeightLabel.text = [NSString stringWithFormat:@"%.0f kg", sender.value];
    _snowboardWeight = sender.value;
    
    NSLog(@"SNowboard weight = %f", _snowboardWeight);
    
    if (_snowboardHeight < 1.51){
        if (_snowboardWeight < 50){
            _snowboardSize = 1.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 1.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 1.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 1.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 1.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 1.6;
        }
        else {
            _snowboardSize = 1.7;
        }
        
        
        
    }
    
    else if (_snowboardHeight < 1.7){
        if (_snowboardWeight < 50){
            _snowboardSize = 2.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 2.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 2.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 2.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 2.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 2.6;
        }
        else {
            _snowboardSize = 2.7;
        }
        
        
    }
    
    else if (_snowboardHeight < 1.8542){
        if (_snowboardWeight < 50){
            _snowboardSize = 3.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 3.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 3.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 3.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 3.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 3.6;
        }
        else {
            _snowboardSize = 3.7;
        }
    }
    else if (_snowboardHeight < 1.9558){
        if (_snowboardWeight < 50){
            _snowboardSize = 4.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 4.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 4.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 4.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 4.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 4.6;
        }
        else {
            _snowboardSize = 4.7;
        }
    }
    else{
        if (_snowboardWeight < 50){
            _snowboardSize = 5.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 5.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 5.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 5.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 5.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 5.6;
        }
        else {
            _snowboardSize = 5.7;
        }
    }
    
    NSLog(@"snowboard size = %f", _snowboardSize);
    
    
}

- (IBAction)snowboardCalculate:(UIButton *)sender {
    
    if (_snowboardHeight < 1.51){
        if (_snowboardWeight < 50){
            _snowboardSize = 1.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 1.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 1.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 1.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 1.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 1.6;
        }
        else {
            _snowboardSize = 1.7;
        }
        
        
        
    }
    
    else if (_snowboardHeight < 1.7){
        if (_snowboardWeight < 50){
            _snowboardSize = 2.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 2.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 2.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 2.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 2.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 2.6;
        }
        else {
            _snowboardSize = 2.7;
        }
        
        
    }
    
    else if (_snowboardHeight < 1.8542){
        if (_snowboardWeight < 50){
            _snowboardSize = 3.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 3.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 3.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 3.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 3.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 3.6;
        }
        else {
            _snowboardSize = 3.7;
        }
    }
    else if (_snowboardHeight < 1.9558){
        if (_snowboardWeight < 50){
            _snowboardSize = 4.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 4.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 4.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 4.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 4.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 4.6;
        }
        else {
            _snowboardSize = 4.7;
        }
    }
    else{
        if (_snowboardWeight < 50){
            _snowboardSize = 5.1;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 5.2;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 5.3;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 5.4;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 5.5;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 5.6;
        }
        else {
            _snowboardSize = 5.7;
        }
    }
    
    if (_snowboardSize == 1.1){
            self.snowboardSizeLabel.text = [NSString stringWithFormat:@"146-148 cm"];
        
    }
    else if (_snowboardSize == 1.2){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"147-149 cm"];
        
    }
    else if (_snowboardSize == 1.3){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        
    }
    else if (_snowboardSize == 1.4){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        
    }
    else if (_snowboardSize == 1.5){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-156 cm"];
        
    }
    else if (_snowboardSize == 1.6){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"157-159 cm"];
        
    }
    else if (_snowboardSize == 1.7){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        
    }
    else if (_snowboardSize == 2.1){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"147-149 cm"];
        
    }
    else if (_snowboardSize == 2.2){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"149-151 cm"];
        
    }
    else if (_snowboardSize == 2.3){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153 cm"];
        
    }
    else if (_snowboardSize == 2.4){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-156 cm"];
        
    }
    else if (_snowboardSize == 2.5){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        
    }
    else if (_snowboardSize == 2.6){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        
    }
    else if (_snowboardSize == 2.7){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        
    }
    else if (_snowboardSize == 3.1){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"149-151 cm"];
        
    }
    else if (_snowboardSize == 3.2){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        
    }
    else if (_snowboardSize == 3.3){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        
    }
    else if (_snowboardSize == 3.4){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        
    }
    else if (_snowboardSize == 3.5){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        
    }
    else if (_snowboardSize == 3.6){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        
    }
    else if (_snowboardSize == 3.7){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        
    }
    else if (_snowboardSize == 4.1){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        
    }
    else if (_snowboardSize == 4.2){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153 cm"];
        
    }
    else if (_snowboardSize == 4.3){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-146 cm"];
        
    }
    else if (_snowboardSize == 4.4){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"157-159 cm"];
        
    }
    else if (_snowboardSize == 4.5){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        
    }
    else if (_snowboardSize == 4.6){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"161-163cm"];
        
    }
    else if (_snowboardSize == 4.7){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        
    }
    else if (_snowboardSize == 5.1){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153cm"];
        
    }
    else if (_snowboardSize == 5.2){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        
    }
    else if (_snowboardSize == 5.3){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        
    }
    else if (_snowboardSize == 5.4){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        
    }
    else if (_snowboardSize == 5.5){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        
    }
    else if (_snowboardSize == 5.6){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        
    }
    else{
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"164-166 cm"];
        
    }
    
}
@end
