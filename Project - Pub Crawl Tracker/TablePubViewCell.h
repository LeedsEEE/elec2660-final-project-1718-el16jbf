//
//  TablePubViewCell.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pub.h"
#import "PubDataModel.h"
#import "TablePubViewController.h"

@interface TablePubViewCell : UITableViewCell

@property (nonatomic, strong) PubDataModel *data;

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UISwitch *cellSwitchOutlet;
@end
