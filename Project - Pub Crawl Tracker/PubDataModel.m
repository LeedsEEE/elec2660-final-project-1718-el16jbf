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
        
        [self.pubArray addObject:library]; //index 0
    }
    return self;
}

@end
