//
//  PubViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubViewController.h"
#import "PubDataModel.h"

@interface PubViewController ()

@end

@implementation PubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pubNameLabel.text = self.pub.name;
    self.pubStreetLabel.text = self.pub.street;
    self.pubTownLabel.text = self.pub.town;
    self.pubCityLabel.text = self.pub.city;
    self.pubPostcodeLabel.text = self.pub.postcode;
    self.pubPhoneLabel.text = self.pub.phone;
    self.pubRatingLabel.text = self.pub.rating;
    self.pubImageView.image = [UIImage imageNamed:_pub.picture];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
