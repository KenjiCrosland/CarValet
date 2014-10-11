//
//  ElectricCar.m
//  CarValet
//
//  Created by Kenji Crosland on 10/11/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "ElectricCar.h"

@implementation ElectricCar

-(id) init{
    self = [super init];
    if (!self)
    {
        _kilowattHours = 0.0f;
    }
    
    return self;
}

-(id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year kilowattHours:(float)kilowattHours milesPerKilowattHour:(float)milesPerKilowattHour
{
    self = [super init];
    self.make = make;
    self.model = model;
    self.year = year;
    self.kilowattHours = kilowattHours;
    self.milesPerKilowattHour = milesPerKilowattHour;
    return self;
}

-(float)milesLeft
{
    return (self.kilowattHours * self.milesPerKilowattHour);
}

-(void)printCarInfo;
{
    [super printCarInfo];
    NSLog(@"Kilowatt Hours Left: %0.0f", self.kilowattHours);
    NSLog(@"Miles Per Kilowatt Hour: %0.0f", self.milesPerKilowattHour);
    NSLog(@"Miles Left: %0.0f", self.milesLeft);
}

@end
