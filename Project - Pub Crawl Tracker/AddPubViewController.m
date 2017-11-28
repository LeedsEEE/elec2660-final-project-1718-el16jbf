//
//  SecondViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "AddPubViewController.h"

@interface AddPubViewController ()

@end

@implementation AddPubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonPressed:(UIButton *)sender
{
    NSDictionary *pubInfo = @{@"name": self.PubNameField.text,
                              @"street":self.PubStreetField.text,
                              @"town": self.PubTownField.text,
                              @"city":self.PubCityField.text,
                              @"postcode":self.PubPostcodeField.text,
                              @"phoneNumber":self.PubPhoneNumberField.text,
                              @"rating":_PubRatingField.text};
    
    self.dataOutputField.text = [PubEntity addPubInfoFromDictionary:pubInfo].description;
}

- (IBAction)CancelButtonPressed:(UIButton *)sender {
}
@end
