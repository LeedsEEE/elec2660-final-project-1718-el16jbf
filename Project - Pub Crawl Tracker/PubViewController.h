//
//  PubViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pub.h"

@interface PubViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *pubNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubStreetLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubTownLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubCityLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubPostcodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubPhoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *pubRatingLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pubImageView;

@property (strong, nonatomic) Pub *pub;
@end
