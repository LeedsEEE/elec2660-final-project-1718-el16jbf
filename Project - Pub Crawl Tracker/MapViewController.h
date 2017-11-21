//
//  FirstViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController

- (IBAction)mapTypeControl:(UISegmentedControl *)sender;
- (IBAction)zoomStepper:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UILabel *numberOfPubsLabel;
@property (weak, nonatomic) IBOutlet UILabel *routeLengthLabel;


@end

