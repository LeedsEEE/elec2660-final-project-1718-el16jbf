//
//  FirstViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 07/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.location = [[CLLocationManager alloc] init];
    
    self.mapView.delegate = self;
    self.location.delegate = self;
    
    self.mapView.showsUserLocation = YES;
    
    [self.location requestWhenInUseAuthorization];
    
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords = currentLocation.coordinate;
    
    self.mapView.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.024, 0.024));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mapTypeControl:(UISegmentedControl *)sender {
   /* typedef enum MKMapType : NSUInteger {
        MKMapTypeStandard = 0,
        MKMapTypeSatellite,
        MKMapTypeHybrid,
        MKMapTypeSatelliteFlyover, 
        MKMapTypeHybridFlyover
    }MKMapType; */
   if (sender.selectedSegmentIndex == 0) {
        self.mapView.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
       self.mapView.mapType = MKMapTypeSatellite;
    }else if (sender.selectedSegmentIndex == 2) {
        self.mapView.mapType = MKMapTypeHybrid;
    }
}
- (IBAction)zoomStepper:(UIStepper *)sender {
    self.stepperValue = 50-sender.value;
    self.spanValue = (self.stepperValue/500)+0.02;
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords = currentLocation.coordinate;
    self.mapView.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(self.spanValue, self.spanValue));
}
@end
