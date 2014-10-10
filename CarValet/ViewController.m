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
    
    HybridCar *otherCar = [[HybridCar alloc]initWithMake:@"Toyota" model:@"Prius" year:2010 fuelAmount:10.0f milesPerGallon:42.0f];
    [otherCar printCarInfo];
    [otherCar shoutMake];
    [otherCar printCarInfo];
}

@end
