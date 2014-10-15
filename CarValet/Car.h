//
//  Car.h
//  CarValet
//
//  Created by Kenji Crosland on 9/24/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic) int year;
@property (nonatomic) NSString *make;
@property (nonatomic) NSString *model;
//@property (nonatomic) float fuelAmount;
@property (getter = isShowingLiters) BOOL showLiters;
@property (nonatomic, setter = setTheFuelAmountTo:) float fuelAmount;
@property (readonly) NSString *carInfo;


-(id)initWithMake:(NSString *)make
            model:(NSString *)model
             year:(int)year
       fuelAmount:(float)fuelAmount;

-(void)printCarInfo;

-(void)shoutMake;

@end
