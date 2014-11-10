//
//  CarEditViewControllerProtocol.h
//  CarValet
//
//  Created by Kenji Crosland on 11/8/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@protocol CarEditViewControllerProtocol <NSObject>

-(Car*)carToEdit;

-(NSInteger)carNumber;

-(void)editedCarUpdated;

@end
