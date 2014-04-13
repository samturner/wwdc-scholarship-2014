//
//  ViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "ViewController.h"

#import "BaseViewController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"

#define isiPhone5  ([[UIScreen mainScreen] bounds].size.height == 568)?TRUE:FALSE

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (!self.hasPresentedAlert && !isiPhone5) {        // Checking for smaller devices
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"3.5\" Device Detected" message:@"Heads up, this will look a whole lot better on a 4\" device. Make sure you scroll down." delegate:self cancelButtonTitle:@"Alrighty then!" otherButtonTitles: nil];
        [view show];
        self.hasPresentedAlert = YES;
    }
    
    // Instantiate the view controllers
    FirstViewController *first = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    SecondViewController *second = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    ThirdViewController *third = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    FourthViewController *fourth = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    
    FifthViewController *fifth = [[FifthViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
    
    SixthViewController *sixth = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    
    // Add the view controllers to the array
    self.viewControllers = [[NSArray alloc] initWithObjects:first, second, third, fourth, sixth, fifth, nil];
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationVertical options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
    BaseViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void) viewDidAppear:(BOOL)animated {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = [(BaseViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [(BaseViewController *)viewController index];
    
    index++;
    
    if (index == [self.viewControllers count]) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
}

- (BaseViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    BaseViewController *viewController = [self.viewControllers objectAtIndex:index];
    viewController.index = index;
    
    return viewController;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return [self.viewControllers count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

@end
