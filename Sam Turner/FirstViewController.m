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
    
    // Do any additional setup after loading the view from its nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
