//
//  FirstViewController.h
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *numberOfPubsLabel;
@property (weak, nonatomic) IBOutlet UILabel *routeLengthLabel;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *location;
@property(nonatomic) BOOL showsZoomControls;
//@property(nonatomic, readonly, getter=isUserLocationVisible) BOOL userLocationVisible;
//@property(nonatomic) BOOL showsUserLocation;
@property double stepperValue;
@property double spanValue;

- (IBAction)mapTypeControl:(UISegmentedControl *)sender;
- (IBAction)zoomStepper:(UIStepper *)sender;

@end

