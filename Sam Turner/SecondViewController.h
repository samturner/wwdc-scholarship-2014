//
//  SecondViewController.h
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "BaseViewController.h"
#import <MapKit/MapKit.h>

@interface SecondViewController : BaseViewController

@property (weak, nonatomic) IBOutlet MKMapView *uniMap;

@property (weak, nonatomic) IBOutlet UILabel *studyLabel;
@property (weak, nonatomic) IBOutlet UILabel *leisureLabel;
@property (weak, nonatomic) IBOutlet UILabel *workLabel;

@property (weak, nonatomic) IBOutlet UILabel *downPrompt;

@end
