//
//  DrinksTableViewCell.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrinksTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *drinkNameLabel;
@property (weak, nonatomic) IBOutlet UIStepper *numberStepper;
@property (weak, nonatomic) IBOutlet UILabel *numberDrunkLabel;

- (IBAction)numberDrunkStepper:(UIStepper *)sender;

@end
