//
//  FourthViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "BaseViewController.h"
#import "ThirdViewTableViewCell.h"
#import "CellDetailViewController.h"

#import "Project.h"

@interface FourthViewController : BaseViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *downPrompt;

@property (strong, nonatomic) NSArray *projects;


@end
