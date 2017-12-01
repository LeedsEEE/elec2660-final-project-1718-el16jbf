//
//  MapScreenViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapScreenViewController.h"

@interface MapScreenViewController ()

@end

@implementation MapScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data = [[PubDataModel alloc] init];
    
    self.location = [[CLLocationManager alloc] init];
    
    self.mapView.delegate = self;
    self.location.delegate = self;
    
    [self.location requestWhenInUseAuthorization];
    
    self.mapView.showsUserLocation = YES;
    //CLLocation *currentLocation = self.location.location;
    //CLLocationCoordinate2D coordinates = currentLocation.coordinate;
    self.spanValue = 0.014;
    
   [self PlotAnnotations];
                                                 
}
- (void) viewWillAppear:(BOOL)animated{
    [self PlotAnnotations];
    [self ReloadInputViews];
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

- (IBAction)zoomStepperPressed:(UIStepper *)sender {
    NSLog(@"stepper val = %f", sender.value);
    self.stepperValue = 50-sender.value;
    self.spanValue = (self.stepperValue/500)+0.02;
    NSLog(@"span val = %f", self.spanValue);
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords = currentLocation.coordinate;
    self.mapView.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(self.spanValue, self.spanValue));

}

- (IBAction)mapTypeChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.mapView.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
        self.mapView.mapType = MKMapTypeSatellite;
    }else if (sender.selectedSegmentIndex == 2) {
        self.mapView.mapType = MKMapTypeHybrid;
    }

}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(nonnull MKUserLocation *)userLocation{
    NSLog(@"User Location = %f, %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    MKCoordinateRegion region = MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(self.spanValue, self.spanValue));
    [self.mapView setRegion:region animated:YES];
}

-(void) PlotAnnotations {
    
    for (int i = 0; i < self.data.pubArray.count; i++) {
        
        Pub *temp = [self.data.pubArray objectAtIndex:i];
        NSLog(@"Pub Located: %@",temp.name);
        
        CLLocationCoordinate2D pubCoordinates;
        if (temp.include == true) {
            pubCoordinates = CLLocationCoordinate2DMake(temp.latitude, temp.longitude);
            
            MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc]init];
            pointAnnotation.coordinate = pubCoordinates;
            
            [self.mapView addAnnotation:pointAnnotation];
        }
        
    }
    
}
-(void) ReloadInputViews{
    [self.mapView reloadInputViews];
    
    
    
}

@end
