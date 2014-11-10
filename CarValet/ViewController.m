//
//  ViewController.m
//  CarValet
//
//  Created by Kenji Crosland on 9/24/14.
//  Copyright (c) 2014 Kenji Crosland. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "HybridCar.h"
#import "ElectricCar.h"
#import "CarEditViewController.h"
#import "AboutViewController.h"


@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray *arrayOfCars;
    int displayedCarIndex;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EditSegue"])
    {
        CarEditViewController *nextController;
        nextController = segue.destinationViewController;
        nextController.carNumber = displayedCarIndex + 1;
        Car *currentCar = arrayOfCars[displayedCarIndex];
        nextController.currentCar = currentCar;
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    
    arrayOfCars = [[NSMutableArray alloc] init];
    [self newCar:nil];
    displayedCarIndex = 0;
    self.nextButton.enabled = NO;
    self.previousButton.enabled = NO;
    [self displayCurrentCarInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    ElectricCar *otherCar = [[ElectricCar alloc]initWithMake:@"Tesla" model:@"D Class" year:2015 kilowattHours:15.0 milesPerKilowattHour:50.0];
    [otherCar printCarInfo];
}

-(void)changeDisplayedCar:(int)newIndex
{
    if (newIndex < 0) {
        newIndex = 0;
    }
    else if (newIndex >= [arrayOfCars count]){
        newIndex = (int)[arrayOfCars count] - 1;
    }
    
    if (displayedCarIndex != newIndex) {
        displayedCarIndex = newIndex;
        [self displayCurrentCarInfo];
    }
}

-(Car*)carToEdit{
    return arrayOfCars[displayedCarIndex];
}
-(NSInteger)carNumber {
    return displayedCarIndex + 1;
}
-(void)editedCarUpdated {
    [self displayCurrentCarInfo];
    NSLog(@"\neditedCarUpdated called!\n");
}

- (IBAction)newCar:(id)sender {
    Car *newCar = [[Car alloc]init];
    [arrayOfCars addObject:newCar];
    [self updateLabel:self.totalCarsLabel withBaseString:@"Total Cars:" count:[arrayOfCars count]];
    if (self.nextButton.enabled == NO && self.previousButton.enabled == NO && [arrayOfCars count] >= 1 ) {
        self.nextButton.enabled = YES;
        self.previousButton.enabled = YES;
    }
}
-(void)updateLabel:(UILabel*)theLabel
    withBaseString:(NSString*)baseString
             count:(NSInteger)theCount{
    NSString *newText;
    newText = [NSString stringWithFormat:@"%@ %ld", baseString, (long)theCount];
    theLabel.text = newText;
}
-(void)displayCurrentCarInfo {
    Car *currentCar;
    currentCar = [arrayOfCars objectAtIndex:displayedCarIndex];
    self.carInfoLabel.text = currentCar.carInfo;
    [self updateLabel:self.carNumberLabel withBaseString:@"Car Number:" count:displayedCarIndex + 1];
    
}
- (IBAction)nextCar:(id)sender {
    [self changeDisplayedCar:displayedCarIndex + 1];
}

- (IBAction)previousCar:(id)sender {
    [self changeDisplayedCar:displayedCarIndex - 1];
}
-(IBAction)editingDone:(UIStoryboardSegue *)segue {
    [self displayCurrentCarInfo];
}
-(IBAction)cancelEditing:(UIStoryboardSegue*)segue
{
    [self displayCurrentCarInfo];
}
@end
