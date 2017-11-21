//
//  DrinkSelectorViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrinkSelectorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIPickerView *drinkPickerView;
- (IBAction)saveButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end