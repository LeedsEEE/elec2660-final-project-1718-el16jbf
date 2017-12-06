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
        
        self.drinksArray = [NSMutableArray array];
        
        Drinks *pintFour = [[Drinks alloc] init];
        pintFour.name = @"Pint of 4%";
        pintFour.units = 2.3;
        pintFour.numberDrunk = 0;
        pintFour.unitsConsumed = 0;
        
        Drinks *pintFive = [[Drinks alloc] init];
        pintFive.name = @"Pint of 5%";
        pintFive.units = 2.8;
        pintFive.numberDrunk = 1;
        pintFive.unitsConsumed = 0;
        
        Drinks *bottleFour = [[Drinks alloc] init];
        bottleFour.name = @"Bottle of 4%";
        
        Drinks *bottleFive = [[Drinks alloc] init];
        bottleFour.name = @"Bottle of 5%";
        
        Drinks *mixerSingle = [[Drinks alloc] init];
        bottleFour.name = @"Single mixer";
        
        [self.drinksArray addObject:pintFour]; //index 0
        [self.drinksArray addObject:pintFive]; //index 1
        [self.drinksArray addObject:bottleFour]; //index 2
        [self.drinksArray addObject:bottleFive]; //index 3
        [self.drinksArray addObject:mixerSingle]; //index 4
        
    }
    return self;
}


@end
