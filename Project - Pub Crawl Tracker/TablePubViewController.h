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
#import "MapScreenViewController.h"

/* tab bar icon = hhttps://cdn3.iconfinder.com/data/icons/snack-time/400/snack_time-17-512.png
                    resized at http://resizeimage.net
 */

@interface TablePubViewController : UIViewController

- (IBAction)SwitchChanged:(UISwitch *)sender;
@property (nonatomic, strong) PubDataModel *data;



@end
