//
//  CarEditViewController.m
//  CarValet
//
//  Created by Kenji Crosland on 10/23/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "CarEditViewController.h"
#import "Car.h"

@interface CarEditViewController ()

@end

@implementation CarEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *carNumberText;
    carNumberText = [NSString stringWithFormat:@"Car Number: %ld", (long)self.carNumber];
    self.carNumberLabel.text = carNumberText;
    self.modelField.text = self.currentCar.model;
    self.makeField.text = self.currentCar.make;
    self.yearField.text = [NSString stringWithFormat:@"%d", self.currentCar.year];
    self.fuelField.text = [NSString stringWithFormat:@"%0.2f", self.currentCar.fuelAmount];
    
    // Do any additional setup after loading the view.
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    self.currentCar.make = self.makeField.text;
    self.currentCar.model = self.modelField.text;
    self.currentCar.year = [self.yearField.text intValue];
    self.currentCar.fuelAmount = [self.fuelField.text floatValue];
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

@end
