//
//  Project.h
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

@property (strong, nonatomic) NSString *header;
@property (strong, nonatomic) NSString *role;
@property (strong, nonatomic) NSString *introduction;
@property (strong, nonatomic) NSString *projectIcon;
@property (strong, nonatomic) NSString *projectDescription;
@property (strong, nonatomic) NSString *languages;

@property (strong, nonatomic) UIColor *accentColor;

@end
