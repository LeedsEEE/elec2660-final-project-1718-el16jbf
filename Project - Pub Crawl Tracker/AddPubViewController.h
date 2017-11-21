//
//  SecondViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddPubViewController : UIViewController

- (IBAction)pubNameInput:(UITextField *)sender;
- (IBAction)pubStreetInput:(UITextField *)sender;
- (IBAction)pubTownInput:(UITextField *)sender;
- (IBAction)pubCityInput:(UITextField *)sender;
- (IBAction)pubPostcodeInput:(UITextField *)sender;
- (IBAction)pubNumberInput:(UITextField *)sender;
- (IBAction)pubRatingInput:(UITextField *)sender;

- (IBAction)saveButtonPressed:(UIButton *)sender;
- (IBAction)CancelButtonPressed:(UIButton *)sender;
@end

