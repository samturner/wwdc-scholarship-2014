//
//  SixthViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 9/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "SixthViewController.h"

@interface SixthViewController ()

@end

@implementation SixthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewDidLoad {
    [super viewDidLoad];
    
}

- (void) viewWillAppear:(BOOL)animated {

}

- (void) viewDidAppear:(BOOL)animated {
	NSString *keyPath = @"transform";
	CATransform3D transform = self.meCircle.layer.transform;
	id finalValue = [NSValue valueWithCATransform3D:
                     CATransform3DScale(transform, 1.5, 1.5, 1.5)
                     ];
	
	SKBounceAnimation *bounceAnimation = [SKBounceAnimation animationWithKeyPath:keyPath];
	bounceAnimation.fromValue = [NSValue valueWithCATransform3D:transform];
	bounceAnimation.toValue = finalValue;
	bounceAnimation.duration = 0.5f;
	bounceAnimation.numberOfBounces = 4;
//	bounceAnimation.shouldOvershoot = YES;
	
	[self.meCircle.layer addAnimation:bounceAnimation forKey:@"someKey"];
	
	[self.meCircle.layer setValue:finalValue forKeyPath:keyPath];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
