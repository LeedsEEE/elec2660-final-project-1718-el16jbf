//
//  PubTableViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PubDataModel.h"
#import "PubViewController.h"

@interface PubTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) PubDataModel *data;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end
