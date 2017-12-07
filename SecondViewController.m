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

#pragma mark viewDidLoad

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.snowboardHeightLabel.text = [NSString stringWithFormat:@"1.75 m"];
    self.SnowboardWeightLabel.text = [NSString stringWithFormat:@"72 kg"];
    self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
    
    _snowboardHeight = 1.75;
    _snowboardWeight = 72;
    
    
    

    
    
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

#pragma mark  height slider

- (IBAction)snowboardHeightSlider:(UISlider *)sender {
    self.snowboardHeightLabel.text = [NSString stringWithFormat:@"%.2f m", sender.value]; // height label set from slider
    _snowboardHeight = sender.value; // height variable set from slider
    
    // snowboard size category calculated from height and weight
    
    if (_snowboardHeight < 1.51){
        if (_snowboardWeight < 50){
            _snowboardSize = 11;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 12;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 13;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 14;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 15;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 16;
        }
        else {
            _snowboardSize = 17;
        }
        
        
        
    }
    
    else if (_snowboardHeight < 1.7){
        if (_snowboardWeight < 50){
            _snowboardSize = 21;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 22;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 23;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 24;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 25;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 26;
        }
        else {
            _snowboardSize = 27;
        }
        
    
    }
    
    else if (_snowboardHeight < 1.8542){
        if (_snowboardWeight < 50){
            _snowboardSize = 31;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 32;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 33;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 34;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 35;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 36;
        }
        else {
            _snowboardSize = 37;
        }
    }
    else if (_snowboardHeight < 1.9558){
        if (_snowboardWeight < 50){
            _snowboardSize = 41;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 42;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 43;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 44;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 45;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 46;
        }
        else {
            _snowboardSize = 47;
        }
    }
    else{
        if (_snowboardWeight < 50){
            _snowboardSize = 51;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 52;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 53;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 54;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 55;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 56;
        }
        else {
            _snowboardSize = 57;
        }
    }
     NSLog(@"SNowboard height = %f", _snowboardHeight); // check height
}

#pragma mark weight slider

- (IBAction)snowboardWeightSlider:(UISlider *)sender {
    self.SnowboardWeightLabel.text = [NSString stringWithFormat:@"%.0f kg", sender.value]; //weight label set from slider
    _snowboardWeight = sender.value; // weight variable set from slider
    
    NSLog(@"SNowboard weight = %f", _snowboardWeight); // check weight
    
    if (_snowboardHeight < 1.51){
        if (_snowboardWeight < 50){
            _snowboardSize = 11;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 12;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 13;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 14;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 15;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 16;
        }
        else {
            _snowboardSize = 17;
        }
        
        
        
    }
    
    else if (_snowboardHeight < 1.7){
        if (_snowboardWeight < 50){
            _snowboardSize = 21;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 22;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 23;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 24;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 25;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 26;
        }
        else {
            _snowboardSize = 27;
        }
        
        
    }
    
    else if (_snowboardHeight < 1.8542){
        if (_snowboardWeight < 50){
            _snowboardSize = 31;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 32;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 33;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 34;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 35;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 36;
        }
        else {
            _snowboardSize = 37;
        }
    }
    else if (_snowboardHeight < 1.9558){
        if (_snowboardWeight < 50){
            _snowboardSize = 41;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 42;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 43;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 44;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 45;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 46;
        }
        else {
            _snowboardSize = 47;
        }
    }
    else{
        if (_snowboardWeight < 50){
            _snowboardSize = 51;
        }
        else if (_snowboardWeight < 60){
            _snowboardSize = 52;
        }
        else if (_snowboardWeight < 70){
            _snowboardSize = 53;
        }
        else if (_snowboardWeight < 80){
            _snowboardSize = 54;
        }
        else if (_snowboardWeight < 90){
            _snowboardSize = 55;
        }
        else if (_snowboardWeight < 95){
            _snowboardSize = 56;
        }
        else {
            _snowboardSize = 57;
        }
    }
    NSLog(@"snowboard size = %d", _snowboardSize); // check size
    
    
}

#pragma mark caluclate button

- (IBAction)snowboardCalculate:(UIButton *)sender {
    
    NSLog(@"snowboard size = %d", _snowboardSize);
    
    
    // set label to display suggested snowboard size based on the variable snowboardSize calcualated earlier
    
    if (_snowboardSize == 11){
            self.snowboardSizeLabel.text = [NSString stringWithFormat:@"146-148 cm"];
        _snowboardCheck = 1.1; // this variable is used to check the if statements were working correctly 
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 12){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"147-149 cm"];
        _snowboardCheck = 1.2;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 13){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        _snowboardCheck = 1.3;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 14){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        _snowboardCheck = 1.4;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 15){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-156 cm"];
        _snowboardCheck = 1.5;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 16){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"157-159 cm"];
        _snowboardCheck = 1.6;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 17){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        _snowboardCheck = 1.7;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 21){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"147-149 cm"];
        _snowboardCheck = 2.1;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 22){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"149-151 cm"];
        _snowboardCheck = 2.2;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 23){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153 cm"];
        _snowboardCheck = 2.3;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 24){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-156 cm"];
        _snowboardCheck = 2.4;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 25){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        _snowboardCheck = 2.5;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 26){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        _snowboardCheck = 2.6;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 27){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        _snowboardCheck = 2.7;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 31){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"149-151 cm"];
        _snowboardCheck = 2.7;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 32){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        
    }
    else if (_snowboardSize == 33){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        _snowboardCheck = 3.3;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 34){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        _snowboardCheck = 3.4;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 35){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        _snowboardCheck = 3.5;
        NSLog(@"check = %f", _snowboardCheck);
    }
    else if (_snowboardSize == 36){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        _snowboardCheck = 3.6;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 37){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        _snowboardCheck = 3.7;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 41){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"150-152 cm"];
        _snowboardCheck = 4.1;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 42){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153 cm"];
        _snowboardCheck = 4.2;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 43){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"154-146 cm"];
        _snowboardCheck = 4.3;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 44){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"157-159 cm"];
        _snowboardCheck = 4.4;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 45){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        _snowboardCheck = 4.5;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 46){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"161-163cm"];
        _snowboardCheck = 4.6;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 47){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        _snowboardCheck = 4.7;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 51){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"151-153cm"];
        _snowboardCheck = 5.1;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 52){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"153-155 cm"];
        _snowboardCheck = 5.2;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 53){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"155-157 cm"];
        _snowboardCheck = 5.3;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 54){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"158-160 cm"];
        _snowboardCheck = 5.4;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 55){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"159-161 cm"];
        _snowboardCheck = 5.5;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if (_snowboardSize == 56){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"162-164 cm"];
        _snowboardCheck = 5.6;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    else if(_snowboardSize == 57){
        self.snowboardSizeLabel.text = [NSString stringWithFormat:@"164-166 cm"];
        _snowboardCheck = 5.7;
        NSLog(@"check = %f", _snowboardCheck);
        
    }
    
}
@end
