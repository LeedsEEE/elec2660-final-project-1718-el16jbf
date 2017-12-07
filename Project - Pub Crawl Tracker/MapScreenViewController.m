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
    self.data = [[PubDataModel alloc] init]; //initalise the data
    self.numberOfPubsLabel.text = [NSString stringWithFormat:@"Number of pubs = %lu",(unsigned long)self.data.pubArray.count]; // use the array count for the label to make the app more versatile
    self.location = [[CLLocationManager alloc] init]; //initalise the location
    self.mapView.delegate = self; //set the delegates as this view controller
    self.location.delegate = self;
    self.mapView.showsUserLocation = YES; // tell the map to display user location
    self.spanValue = 0.014;
    [self.location requestWhenInUseAuthorization]; // request permission to view the users location
    [self PlotAnnotations]; //call the method to plot the annotations of the pubs that are switched on
                                                 
}
- (void) viewWillAppear:(BOOL)animated{
    [self.mapView removeAnnotations:self.mapView.annotations];
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
        
         NSUserDefaults *switchState = [NSUserDefaults standardUserDefaults];
        
        Pub *temp = [self.data.pubArray objectAtIndex:i];
        NSLog(@"Pub Located: %@",temp.name);
        
        CLLocationCoordinate2D pubCoordinates;
        bool Switch = [switchState boolForKey:[NSString stringWithFormat:@"SwitchState %d",i]];
        if (Switch == true) {
            pubCoordinates = CLLocationCoordinate2DMake(temp.latitude, temp.longitude);
            
            MKPointAnnotation *pointAnnotation = [[MKPointAnnotation alloc]init];
            pointAnnotation.coordinate = pubCoordinates;
            pointAnnotation.title = temp.name;
            
            [self.mapView addAnnotation:pointAnnotation];
        }
        
    }
    
}
-(void) ReloadInputViews{
    [self.mapView reloadInputViews];
    
    
    
}

@end
