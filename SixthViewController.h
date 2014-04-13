//
//  SixthViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 9/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "BaseViewController.h"
#import "SKBounceAnimation.h"
#import "DACircularProgressView.h"

#import <SpriteKit/SKView.h>
#import "particleScene.h"

@interface SixthViewController : BaseViewController

@property (strong, nonatomic) IBOutlet SKView *sixthParticleView;
@property (weak, nonatomic) IBOutlet UIImageView *whatsNext;
@property (weak, nonatomic) IBOutlet DACircularProgressView *nextProgress;
@property (weak, nonatomic) IBOutlet UIView *nextContainer;
@property (weak, nonatomic) IBOutlet UILabel *tapMe;
@property (weak, nonatomic) IBOutlet UILabel *downPrompt;
@property (weak, nonatomic) IBOutlet UITextView *nextParagraph;

@property (strong, nonatomic) NSArray *nextArray;
@property (weak, nonatomic) particleScene *sixthScene;

@property int progressStep;

@end
