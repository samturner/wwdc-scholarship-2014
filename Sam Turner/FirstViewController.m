//
//  FirstViewController.m
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


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
    
    UIView *view = self.view;
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
  
    [self addPulseAnimationToView:self.downPrompt];
    
    // Configure the SKView
    SKView * skView = self.particleView;
    
    // Create and configure the scene.
    SKScene * scene = [particleScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
    self.circleImage.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapRecogniser = [[UITapGestureRecognizer alloc]
                                     initWithTarget:self action:@selector(handleCircleTap:)];
    tapRecogniser.delegate = self;
    [self.circleImage addGestureRecognizer:tapRecogniser];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)handleCircleTap:(UITapGestureRecognizer *)tapGestureRecogniser
{
    [self shakeView:self.circleImage];
}

- (void)shakeView:(UIView *)viewToShake
{
    CGFloat t = 3.0;
    CGAffineTransform translateRight  = CGAffineTransformTranslate(CGAffineTransformIdentity, t, 0.0);
    CGAffineTransform translateLeft = CGAffineTransformTranslate(CGAffineTransformIdentity, -t, 0.0);
    
    viewToShake.transform = translateLeft;
    
    [UIView animateWithDuration:0.07 delay:0.0 options:UIViewAnimationOptionAutoreverse|UIViewAnimationOptionRepeat animations:^{
        [UIView setAnimationRepeatCount:2.0];
        viewToShake.transform = translateRight;
    } completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                viewToShake.transform = CGAffineTransformIdentity;
            } completion:NULL];
        }
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
