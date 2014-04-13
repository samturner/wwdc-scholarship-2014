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

-(void) viewDidAppear:(BOOL)animated {
    [self addPulseAnimationToView:self.downPrompt];
}

- (void) viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self setNeedsStatusBarAppearanceUpdate];
    
    [self.particleView presentScene:self.firstScene];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
    // Create and configure the scene.
    self.firstScene = [particleScene sceneWithSize:self.particleView.bounds.size];
    self.firstScene.scaleMode = SKSceneScaleModeAspectFill;
    
    
    self.circleImage.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapRecogniser = [[UITapGestureRecognizer alloc]
                                     initWithTarget:self action:@selector(handleCircleTap:)];
    [self.circleImage addGestureRecognizer:tapRecogniser];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)handleCircleTap:(UITapGestureRecognizer *)tapGestureRecogniser
{
    [self shakeView:self.circleImage];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
