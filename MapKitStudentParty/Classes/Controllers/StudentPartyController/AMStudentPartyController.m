//
//  AMStudentPartyController.m
//  MapKitStudentParty
//
//  Created by Eugene Sokolenko on 01.07.16.
//  Copyright (c) 2016 Anastasia Markovskaya. All rights reserved.
//

#import "AMStudentPartyController.h"

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>



@interface AMStudentPartyController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

static CLLocationDistance const regionRadius = 1000.f;

@implementation AMStudentPartyController

#pragma mark - Accessors

- (CLLocationManager *)locationManager
{
    if (!_locationManager) {
        _locationManager = [[CLLocationManager alloc] init];
    }
    return _locationManager;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.locationManager requestWhenInUseAuthorization];
    
    CLLocation *initialLocation = [[CLLocation alloc] initWithLatitude:48.619160464764f longitude:22.2903777f];
    [self centerMapOnLocation:initialLocation];
}

#pragma mark - MKMapViewDelegate


#pragma mark - Private Methods

- (void)centerMapOnLocation:(CLLocation *)location
{
    MKCoordinateRegion coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.f, regionRadius * 2.f);
    [self.mapView setRegion:coordinateRegion animated:YES];
}

@end
