//
//  DataModel.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubDataModel.h"

@implementation PubDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.pubArray = [NSMutableArray array];
        
        Pub *library = [[Pub alloc] init];
        library.name = @"The Library";
        library.street = @"229 Woodhouse Lane";
        library.town = @"Leeds";
        library.city = @"Leeds";
        library.postcode = @"LS2 3AP";
        library.phone = @"01132440794";
        library.rating = @"4.1";
        library.logo = @"Library logo.jpg";
        
        [self.pubArray addObject:library]; //index 0
    }
    return self;
}

@end
