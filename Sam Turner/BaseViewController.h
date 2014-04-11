//
//  BaseViewController.h
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+FontAwesome.h"
#import "SKBounceAnimation.h"

@interface BaseViewController : UIViewController

@property NSUInteger index;

- (void) addPulseAnimationToView: (UIView *) view;
- (void) shakeView: (UIView *) view;

@end
