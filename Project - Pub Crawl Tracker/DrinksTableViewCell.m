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

- (IBAction)numberDrunkStepper:(UIStepper *)sender {
    //self.numberDrunkLabel.text = [NSString stringWithFormat:@"%d",(int)sender.value];

    self.StepperValue = sender.value;
   Drinks *temp = [self.data.drinksArray objectAtIndex:sender.tag];
    temp.stepperValue = sender.value;
    [self.data.drinksArray replaceObjectAtIndex:sender.tag withObject:temp];
}
@end
