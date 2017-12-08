//
//  DrinksDataModel.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DrinksDataModel.h"

@implementation DrinksDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
        
        self.drinksArray = [NSMutableArray array];
        
        //initalis the array and add the data to it
        
        Drinks *pintFour = [[Drinks alloc] init];
        pintFour.name = @"Pint of 4%";
        pintFour.units = 2.3;
        pintFour.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 0"]];
        pintFour.unitsConsumed = 0;
        
        Drinks *pintFive = [[Drinks alloc] init];
        pintFive.name = @"Pint of 5%";
        pintFive.units = 2.8;
        pintFive.numberDrunk = [drinksNumber integerForKey:@" Drunk = 1"];
        pintFive.unitsConsumed = 0;
        
        Drinks *bottleFour = [[Drinks alloc] init];
        bottleFour.name = @"Bottle of 4%";
        bottleFour.units = 1.3;
        bottleFour.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 2"]];
        pintFour.unitsConsumed = 0;
        
        Drinks *bottleFive = [[Drinks alloc] init];
        bottleFive.name = @"Bottle of 5%";
        bottleFive.units = 1.7;
        bottleFive.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 3"]];
        bottleFive.unitsConsumed = 0;
        
        Drinks *mixerSingle = [[Drinks alloc] init];
        mixerSingle.name = @"Single mixer or 25ml Shot";
        mixerSingle.units = 1;
        mixerSingle.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 4"]];
        mixerSingle.unitsConsumed = 0;
        
        Drinks *mixerDouble = [[Drinks alloc] init];
        mixerDouble.name = @"Double mixer or 50ml Shot";
        mixerDouble.units = 2;
        mixerDouble.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 5"]];
        mixerDouble.unitsConsumed = 0;
        
        Drinks *alcopop = [[Drinks alloc] init];
        alcopop.name = @"Alco-pop bottle";
        alcopop.units = 1.1;
        alcopop.numberDrunk = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = 6"]];
        alcopop.unitsConsumed = 0;
        
        //array in order added
        [self.drinksArray addObject:pintFour]; //index 0
        [self.drinksArray addObject:pintFive]; //index 1
        [self.drinksArray addObject:bottleFour]; //index 2
        [self.drinksArray addObject:bottleFive]; //index 3
        [self.drinksArray addObject:mixerSingle]; //index 4
        [self.drinksArray addObject:mixerDouble]; //index 5
        [self.drinksArray addObject:alcopop]; //index 6
        
    }
    return self;
}
// all information found from www.drinkaware.co.uk

@end
