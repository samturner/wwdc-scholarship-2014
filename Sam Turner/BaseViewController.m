//
//  BaseViewController.m
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
        [self view];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) shakeView: (UIView *) view {
    NSString *keyPath = @"transform";
	CATransform3D transform = view.layer.transform;
	id finalValue = [NSValue valueWithCATransform3D:
                     CATransform3DScale(transform, 1.05, 1.05, 1.05)
                     ];
	
	SKBounceAnimation *bounceAnimation = [SKBounceAnimation animationWithKeyPath:keyPath];
	bounceAnimation.fromValue = [NSValue valueWithCATransform3D:transform];
	bounceAnimation.toValue = finalValue;
	bounceAnimation.duration = 0.3f;
	bounceAnimation.numberOfBounces = 4;
    bounceAnimation.shouldOvershoot = YES;
    bounceAnimation.shake = YES;
	
	[view.layer addAnimation:bounceAnimation forKey:@"someKey"];
}

- (void) addPulseAnimationToView: (UIView *) aView {
    CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    pulseAnimation.duration = 1.8;
    pulseAnimation.toValue = [NSNumber numberWithFloat:0.1];
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    pulseAnimation.autoreverses = YES;
    pulseAnimation.repeatCount = FLT_MAX;
    
    [aView.layer addAnimation:pulseAnimation forKey:@"animateFrame"];
}

@end
