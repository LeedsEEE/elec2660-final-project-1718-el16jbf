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

@interface DrinksConsumptionViewController : UIViewController

@property (nonatomic, strong) DrinksDataModel *data;
@property (weak, nonatomic) IBOutlet UILabel *UnitsConsumedLabel;

- (IBAction)stepperChanged:(UIStepper *)sender;
- (IBAction)UpdatePressed:(UIButton *)sender;
@end
