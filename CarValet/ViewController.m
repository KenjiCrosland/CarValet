//
//  ViewController.m
//  CarValet
//
//  Created by Kenji Crosland on 9/24/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "HybridCar.h"
#import "ElectricCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    ElectricCar *otherCar = [[ElectricCar alloc]initWithMake:@"Tesla" model:@"D Class" year:2015 kilowattHours:15.0 milesPerKilowattHour:50.0];
    [otherCar printCarInfo];
}

@end
