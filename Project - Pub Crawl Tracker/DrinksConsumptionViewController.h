//
//  DrinksConsumptionViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Drinks.h"
#import "DrinksDataModel.h"
#import "DrinksTableViewCell.h"

/* icon from http://www.iconhot.com/icon/png/symbolicons-drink/512/drink-wine-glass.png
                resized at  http://resizeimage.net
 */

@interface DrinksConsumptionViewController : UIViewController

@property (nonatomic, strong) DrinksDataModel *data;
@property (nonatomic, strong) DrinksTableViewCell *cellData;
@property (weak, nonatomic) IBOutlet UILabel *UnitsConsumedLabel;

- (IBAction)stepperChanged:(UIStepper *)sender;
- (IBAction)UpdatePressed:(UIButton *)sender;
@end
