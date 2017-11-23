//
//  Pub.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Pub : UIViewController

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *street;
@property (strong, nonatomic) NSString *town;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *postcode;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *rating;

@end
