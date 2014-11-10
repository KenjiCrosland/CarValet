//
//  CarEditViewController.h
//  CarValet
//
//  Created by Kenji Crosland on 10/23/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarEditViewControllerProtocol.h"

@class Car;

@interface CarEditViewController : UIViewController
@property (nonatomic) int carNumber;
@property (strong, nonatomic) Car *currentCar;
@property (nonatomic) BOOL carSaved;

@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *makeField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;
@property (weak, nonatomic) IBOutlet UITextField *fuelField;
- (IBAction)saveCar:(id)sender;

@end
