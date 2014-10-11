//
//  HybridCar.h
//  CarValet
//
//  Created by Kenji Crosland on 10/9/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"

@interface HybridCar : Car

@property (nonatomic) float milesUntilEmpty;
@property (nonatomic) float milesPerGallon;

-(float)milesUntilEmpty;

-(id)initWithMake:(NSString *)make
            model:(NSString *)model
             year:(int)year
       fuelAmount:(float)fuelAmount
   milesPerGallon:(float)milesPerGallon;

@end
