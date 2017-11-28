//
//  TablePubViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pub.h"
#import "PubDataModel.h"
#import "PubViewController.h"
#import "TablePubViewCell.h"
#import "PubEntity+Add.h"

@interface TablePubViewController : UIViewController

- (IBAction)SwitchChanged:(UISwitch *)sender;
@property (nonatomic, strong) PubDataModel *data;
//@property (nonatomic, strong) PubEntity *userData;

@end
