//
//  ViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

@property(assign) BOOL hasPresentedAlert;

@property (strong, nonatomic) UIPageViewController *pageController;

@property (strong, nonatomic) NSArray *viewControllers;

@property (nonatomic, retain) UIAlertView *alertShowing;

@end
