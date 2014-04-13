//
//  FirstViewController.h
//  PageViewDemo
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "BaseViewController.h"

#import <SpriteKit/SKView.h>
#import "particleScene.h"

@interface FirstViewController : BaseViewController

@property (strong, nonatomic) IBOutlet SKView *particleView;

@property (weak, nonatomic) IBOutlet UILabel *downPrompt;
@property (weak, nonatomic) IBOutlet UILabel *downPromptText;

@property (weak, nonatomic) IBOutlet UIImageView *circleImage;

@property (weak, nonatomic) particleScene *firstScene;

@end
