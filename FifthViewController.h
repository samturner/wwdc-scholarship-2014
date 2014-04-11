//
//  FifthViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "BaseViewController.h"
#import <MapKit/MapKit.h>

@interface FifthViewController : BaseViewController

@property (weak, nonatomic) IBOutlet MKMapView *sanFranMap;
@property (weak, nonatomic) IBOutlet UILabel *bottomThanks;

@end
