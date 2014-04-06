//
//  SecondViewController.m
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

#define METERS_PER_MILE 1609.344

@implementation SecondViewController

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
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
    self.studyLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.studyLabel.text = [NSString fontAwesomeIconStringForEnum:FABook];
    
    self.leisureLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.leisureLabel.text = [NSString fontAwesomeIconStringForEnum:FAGamepad];
    
    self.workLabel.font  = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.workLabel.text = [NSString fontAwesomeIconStringForEnum:FAUsers];
    
    CLLocationCoordinate2D zoomLocation;
    
    zoomLocation.latitude = -33.871105;
    zoomLocation.longitude= 151.206737;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 2.5*METERS_PER_MILE, 2.5*METERS_PER_MILE);
    
    [self.uniMap setRegion:viewRegion animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    CLLocationCoordinate2D uni = CLLocationCoordinate2DMake(-33.886562, 151.187955);
    point.coordinate = uni;
    point.title = @"University of Sydney";
    
    [self.uniMap addAnnotation:point];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
