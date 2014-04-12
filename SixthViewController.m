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
    
    self.nextArray = [[NSArray alloc] initWithObjects:@"At the end of the year I'm hoping to intern at a tech company in the Bay Area to build my technical skills.",@"Next year I plan on graduating University and possibly pursuing postgraduate studies, I'd love to learn as much as I can.", @"Afterwards, I want to live overseas and do meaningful work, ideally in San Francisco but really, anywhere would be an adventure.", @"Ultimately, my dream is to build my own company that makes a real difference and changes the world for the better.", nil];
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
    self.nextContainer.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapRecogniser = [[UITapGestureRecognizer alloc]
                                             initWithTarget:self action:@selector(handleNextTap:)];
    tapRecogniser.delegate = self;
    [self.nextContainer addGestureRecognizer:tapRecogniser];
    
    self.progressStep = 0;
    
    // Configure the SKView
    SKView * skView = self.particleView;
    
    // Create and configure the scene.
    SKScene * scene = [particleScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (void)handleNextTap:(UITapGestureRecognizer *)tapGestureRecogniser {
    
    self.progressStep++;
    
    if (self.progressStep > [self.nextArray count]) self.progressStep = 1;
    
    double count = [self.nextArray count];
    
    double percentage = self.progressStep/count;
    
    if (percentage == 0.0) {
        [self.nextProgress setProgress:percentage animated:NO];
    } else {
        [self.nextProgress setProgress:percentage animated:YES];
        self.tapMe.hidden = YES;
    }
	
    self.nextParagraph.text = [self.nextArray objectAtIndex:self.progressStep-1];
    
    [self shakeView:self.nextContainer];
}

- (void) viewDidAppear:(BOOL)animated {
    [self shakeView:self.nextContainer];
    [self addPulseAnimationToView:self.tapMe];
}

- (void) viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self setNeedsStatusBarAppearanceUpdate];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
