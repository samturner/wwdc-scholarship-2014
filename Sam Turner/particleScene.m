//
//  particleScene.m
//  wwdc scholarship application
//
//  Created by Sam Turner on 4/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "particleScene.h"

@implementation particleScene {
    SKEmitterNode* emitter;
    bool emitting;
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor whiteColor];
        [self addChild:[self newExplosion:50 : 280]];

    }
    return self;
}

- (SKEmitterNode *) newExplosion: (float)posX : (float) posy
{
    
    emitter.name = @"explosion";
    
    emitter.targetNode = self.scene;

    emitter = [[SKEmitterNode alloc] init];
    [emitter setParticleTexture:[SKTexture textureWithImageNamed:@"spark.png"]];
    
    [emitter setParticleBirthRate:20];
    [emitter setParticleSpeedRange:0.2];
    
    [emitter setParticleLifetime:2.5];
    [emitter setParticleLifetimeRange:0.49];
    
    [emitter setParticlePositionRange:CGVectorMake(500, self.frame.size.height)];
    [emitter setPosition:CGPointMake(posX, posy)];
    
    [emitter setAlpha:0.8];
    [emitter setParticleAlphaRange:0.2];
    [emitter setParticleAlphaSpeed:-0.7];
    
    [emitter setParticleScale:0.2];
    [emitter setParticleScaleSpeed:0.45];
    [emitter setYAcceleration:35];

    return emitter;
}

-(void)update:(CFTimeInterval)currentTime {
    [emitter setParticleColor:[UIColor colorWithHue:drand48() saturation:1.0 brightness:1 alpha:0.5]];
    [emitter setParticleColorBlendFactor:1];
    /* Called before each frame is rendered */
}

@end
