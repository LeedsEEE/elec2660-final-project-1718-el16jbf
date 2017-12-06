//
//  MapScreenViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Pub.h"
#import "PubDataModel.h"

/* Refrences
 icon image = https://cdn4.iconfinder.com/data/icons/pictograms-1/512/Map-512.png
                resized at http://resizeimage.net
 */

@interface MapScreenViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *location;
@property (weak, nonatomic) IBOutlet UILabel *numberOfPubsLabel;

@property double stepperValue;
@property double spanValue;

@property (nonatomic, strong) PubDataModel *data;

- (IBAction)zoomStepperPressed:(UIStepper *)sender;
- (IBAction)mapTypeChanged:(UISegmentedControl *)sender;


@end
