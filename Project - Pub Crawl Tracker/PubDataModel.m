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
        library.picture = @"Library Picture.jpg";
        library.logo = @"Library logo.jpg";
        library.include = false;
        
        Pub *hyde = [[Pub alloc] init];
        hyde.name = @"The Hyde Park Pub";
        hyde.street = @"2 Headingly Lane";
        hyde.town = @"Leeds";
        hyde.city = @"Leeds";
        hyde.postcode = @"LS6 2AS";
        hyde.phone = @"01132745597";
        hyde.rating = @"3.5";
        hyde.picture = @"Hyde Park Picture.jpg";
        hyde.logo = @"Hyde Park logo.jpg";
        hyde.include = false;
        
        [self.pubArray addObject:library]; //index 0
        [self.pubArray addObject:hyde]; //index 1

    }
    return self;
}

@end
