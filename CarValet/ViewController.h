//
//  ViewController.h
//  CarValet
//
//  Created by Kenji Crosland on 9/24/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *totalCarsLabel;
- (IBAction)newCar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;

@end
