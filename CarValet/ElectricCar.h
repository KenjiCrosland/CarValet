//
//  ElectricCar.h
//  CarValet
//
//  Created by Kenji Crosland on 10/11/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "Car.h"

@interface ElectricCar : Car
@property (nonatomic) float kilowattHours;
@property (nonatomic) float milesPerKilowattHour;

-(float)milesLeft;

-(id)initWithMake:(NSString *)make
            model:(NSString *)model
             year:(int)year
    kilowattHours:(float)kilowattHours
   milesPerKilowattHour:(float)milesPerKilowattHour;

-(void)printCarInfo;

@end
