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
        
        Drinks *pintFourLager = [[Drinks alloc] init];
        pintFourLager.name = @"Pint of 4% Lager";
        pintFourLager.units = 2.3;
        pintFourLager.numberDrunk = 0;
        pintFourLager.unitsConsumed = 0;
        
        Drinks *pintFiveLager = [[Drinks alloc] init];
        pintFiveLager.name = @"pint of 5% Larger";
        pintFiveLager.units = 2.8;
        pintFiveLager.numberDrunk = 1;
        pintFiveLager.unitsConsumed = 0;
        
        [self.drinksArray addObject:pintFourLager]; //index 0
        [self.drinksArray addObject:pintFiveLager]; //index 1
        
    }
    return self;
}


@end
