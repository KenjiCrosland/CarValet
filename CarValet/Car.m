//
//  Car.m
//  CarValet
//
//  Created by Kenji Crosland on 9/24/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "Car.h"
#import "ElectricCar.h"

@implementation Car


-(id)init {
    return [self initWithMake:nil model:nil year:1900 fuelAmount:0.0f];
}

-(id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year fuelAmount:(float)fuelAmount{
    self = [super init];
    if (self != nil) {
        _make = [make copy];
        _model = [model copy];
        _year = year;
        _fuelAmount = fuelAmount;
    }
    return self;
}

-(void)printCarInfo {
    if (self.make && self.model){
        NSLog(@"Car Make: %@", self.make);
        NSLog(@"Car Model: %@", self.model);
        NSLog(@"Car Year: %d", self.year);
        if([self isMemberOfClass:[Car class]])
        {
        if (self.isShowingLiters) {
            NSLog(@"Number of Liters in Tank: %0.2f", self.fuelAmount);
        }
        else {
        NSLog(@"Number of Gallons in Tank: %0.2f", self.fuelAmount);
        }
        }
    }
    else {
        if (!self.model && self.make) {
            NSLog(@"Car undefined: no model specified");
        }
        else if (self.model && !self.make)
        {
            NSLog(@"Car undefined: no make specified");
        }
        else{
        NSLog(@"Car undefined: no make or model specified");
        }
    }
    
    /*if (!_make)return;
    if (!_model)return;
    
    NSLog(@"Car Make: %@", _make);
    NSLog(@"Car Model: %@", _model);
    NSLog(@"Car Year: %d", _year);
    NSLog(@"Number of Gallons in Tank: %0.2f", _fuelAmount);*/
}
-(void)shoutMake{
    self.make = [self.make uppercaseString];
}
-(float)fuelAmount
{
    if (self.isShowingLiters) {
        return (_fuelAmount * 3.7854);
    }
    return _fuelAmount;
}

@end
