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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)heightSlider:(UISlider *)sender {
        self.heightLabel.text = [NSString stringWithFormat:@"%.2f m", sender.value];
}

- (IBAction)weightSlider:(UISlider *)sender {
    self.weightLabel.text = [NSString stringWithFormat:@"%.0f kg", sender.value];
}

- (IBAction)ageSlider:(UISlider *)sender {
    self.ageLabel.text = [NSString stringWithFormat:@"%.0f ", sender.value];
}

- (IBAction)bslSlider:(UISlider *)sender {
    self.bslLabel.text = [NSString stringWithFormat:@"%.0f mm", sender.value];
}

- (IBAction)calculateButton:(UIButton *)sender {
}
@end
