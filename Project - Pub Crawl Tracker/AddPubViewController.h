//
//  SecondViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PubEntity+Add.h"

@interface AddPubViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *PubNameField;
@property (weak, nonatomic) IBOutlet UITextField *PubStreetField;
@property (weak, nonatomic) IBOutlet UITextField *PubTownField;
@property (weak, nonatomic) IBOutlet UITextField *PubCityField;
@property (weak, nonatomic) IBOutlet UITextField *PubPostcodeField;
@property (weak, nonatomic) IBOutlet UITextField *PubPhoneNumberField;
@property (weak, nonatomic) IBOutlet UITextField *PubRatingField;
@property (weak, nonatomic) IBOutlet UITextView *dataOutputField;

- (IBAction)saveButtonPressed:(UIButton *)sender;
- (IBAction)CancelButtonPressed:(UIButton *)sender;
@end

