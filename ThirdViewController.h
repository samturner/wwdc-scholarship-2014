//
//  ThirdViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "BaseViewController.h"
#import "CellDetailViewController.h"
#import "Project.h"

@interface ThirdViewController : BaseViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *downPrompt;

@property (strong, nonatomic) NSArray *projects;

@end
