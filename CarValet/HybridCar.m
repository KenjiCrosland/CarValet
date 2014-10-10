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
    if (!self) {
        self = [super init];
    }
    return self;
}

-(void)printCarInfo{
    [super printCarInfo];
    NSLog(@"Number of Miles Until Empty: %0.0f", self.milesUntilEmpty);
}

-(float) milesUntilEmpty{
   return (self.milesPerGallon * self.fuelAmount);
}

@end
