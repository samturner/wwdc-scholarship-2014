//
//  CellDetailViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "CellDetailViewController.h"

@interface CellDetailViewController ()

@end

@implementation CellDetailViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Set up the view based on the given project
- (void) showViewWithProject:(Project *) project {
    self.navBar.topItem.title = project.header;
    self.dismissButton.tintColor =  project.accentColor;
    self.projectDescription.text = project.projectDescription;
    self.roleType.textColor = project.accentColor;
    self.roleType.text = project.role;
    self.projectLanguages.text = project.languages;
    [self.icon setImage:[UIImage imageNamed: project.projectIcon]];

}

- (IBAction)dismissModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
