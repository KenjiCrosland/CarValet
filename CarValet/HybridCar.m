//
//  HybridCar.m
//  CarValet
//
//  Created by Kenji Crosland on 10/9/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "HybridCar.h"

@implementation HybridCar

-(id)init
{
    self = [super init];
    
    if (self != nil) {
        _milesPerGallon = 0.0f;
    }
    return self;
}

-(id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year fuelAmount:(float)fuelAmount milesPerGallon:(float)milesPerGallon
{
    self = [super initWithMake:make model:model year:year fuelAmount:fuelAmount];
    if (self !=nil) {
        _milesPerGallon = milesPerGallon;
    }
    return self;
}

-(void)printCarInfo{
    [super printCarInfo];
    NSLog(@"Miles Per Gallon: %0.2f", self.milesPerGallon);
    if (self.milesPerGallon > 0.0f){
    NSLog(@"Number of Miles Until Empty: %0.2f", [self milesUntilEmpty]);
    }
}

-(float) milesUntilEmpty{
   return (self.milesPerGallon * self.fuelAmount);
}

@end
