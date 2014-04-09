//
//  FifthViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@end

#define METERS_PER_MILE 1609.344

@implementation FifthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CLLocationCoordinate2D zoomLocation;
    //37.783961, -122.401268
    zoomLocation.latitude = 37.783961;
    zoomLocation.longitude= -122.401268;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 12*METERS_PER_MILE, 12*METERS_PER_MILE);
    
    [self.sanFranMap setRegion:viewRegion animated:YES];
    // Do any additional setup after loading the view from its nib.
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D uni = CLLocationCoordinate2DMake(37.783961, -122.401268);
    point.coordinate = uni;
    point.title = @"Moscone West";
    
    [self.sanFranMap addAnnotation:point];
}

- (void) viewDidAppear:(BOOL)animated {
    [self performSelector:@selector(zoomMap) withObject:nil afterDelay:0.5];

}

- (void) zoomMap {
    CLLocationCoordinate2D zoomLocation;
    
    zoomLocation.latitude = 37.783961;
    zoomLocation.longitude= -122.401268;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 2.5*METERS_PER_MILE, 2.5*METERS_PER_MILE);
    
    [self.sanFranMap setRegion:viewRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
