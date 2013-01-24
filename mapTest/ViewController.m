//
//  ViewController.m
//  mapTest
//
//  Created by Andrew Breja on 1/24/13.
//  Copyright (c) 2013 Andrew Breja. All rights reserved.
//

#import "ViewController.h"

#define METERS_PER_MILE 1609.344

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    // Setup zoom location
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 41.961134;
    zoomLocation.longitude= -86.357324;
    
    // Set view region
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    // Set the view to the defined location
    [_theMapView setRegion:viewRegion animated:YES];
    
    // Now I shall add an annotation
    CLLocationCoordinate2D hpac;
    hpac.latitude = 41.960256;
    hpac.longitude = -86.357539;
    
    NSDictionary *addressDict;
    
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate: hpac addressDictionary: addressDict];

    [_theMapView addAnnotation: placemark];
    
}


@end
