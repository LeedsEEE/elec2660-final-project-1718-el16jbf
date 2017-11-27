//
//  PubEntity.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface PubEntity : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * street;
@property (nonatomic, retain) NSString * town;
@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * postcode;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) NSString * rating;

@end
