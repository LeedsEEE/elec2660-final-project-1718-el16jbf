//
//  TablePubViewCell.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TablePubViewCell.h"

@implementation TablePubViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.data = [[PubDataModel alloc] init];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)cellSwitchChanged:(UISwitch *)sender {
 //   if(sender.on == true){
      //  [self.data.pubArray objectAtIndex:indexPath.row];
 //   }
}
@end
