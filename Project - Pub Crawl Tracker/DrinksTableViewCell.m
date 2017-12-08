//
//  DrinksTableViewCell.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DrinksTableViewCell.h"

@implementation DrinksTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)numberDrunkStepper:(UIStepper *)sender { // stepper action
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    [drinksNumber setInteger:sender.value forKey:[NSString stringWithFormat:@" Drunk = %ld",(long)sender.tag]];
    [drinksNumber synchronize]; //add value to userDefaults
    self.numberDrunkLabel.text = [NSString stringWithFormat:@"%.0f",sender.value]; //update the label
}
@end
