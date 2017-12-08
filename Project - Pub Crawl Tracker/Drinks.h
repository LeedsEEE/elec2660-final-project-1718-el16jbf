//
//  Drinks.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drinks : NSObject

//define the required attributes of the data

@property (strong, nonatomic) NSString *name;
@property float units;
@property float numberDrunk;
@property float unitsConsumed;

@end
