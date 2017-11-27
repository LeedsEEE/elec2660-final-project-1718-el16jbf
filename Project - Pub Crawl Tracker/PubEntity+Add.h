//
//  PubEntity+Add.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubEntity.h"

@interface PubEntity (Add)

+ (PubEntity *)addPubInfoFromDictionary:(NSDictionary *)pubInfo;

@end
