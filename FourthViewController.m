//
//  FourthViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

@synthesize projects;

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
    
    // Build the project data
    // Build the project data
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
    Project *pixol = [[Project alloc] init];
    pixol.header = @"Pixol";
    pixol.role = @"Developer, Designer & Founder";
    pixol.languages  = @"HTML, CSS, Javascript, Photoshop";
    pixol.accentColor = [UIColor colorWithRed:1 green:0.82 blue:0.09 alpha:1];
    pixol.introduction = @"A web design company I started in high school. We had multiple clients that provided us with a great learning experience.";
    pixol.projectIcon = @"pixol_icon.png";
    pixol.projectDescription = [NSString stringWithFormat:@"%@\r\r%@",@"Pixol is the name of the company that I started in my later years of High School with one of my best friends. We were a web design company with six regular clients. We spent all our spare time after school going to meet with them and building their websites. As a high school student, this was great - it sure beat working at McDonalds!", @"This taught me all the basic technical skills I used today in HTML, CSS, Javascript and PHP. It also taught me soft skills like how to deal with clients (both happy and unhappy), how to work in a small team and managing finances."];
    
    Project *work = [[Project alloc] init];
    work.header = @"Work";
    work.role = @"Developer & Designer";
    work.languages = @"HTML, CSS, Angular JS, SASS, Oracle";
    work.accentColor = [UIColor colorWithRed:1 green:0.23 blue:0.19 alpha:1];
    work.introduction = @"For the past year I've been working at a large professional services firm working on everything from Data Analysis to Front End Development";
    work.projectIcon = @"work_icon.png";
    work.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"For the past year and a half, I've been working for one of the big four professional services firms doing a variety of things from Data Analysis to Front End Development.", @"I started doing Data Analysis over financial data, giving clients insight into how and where there money is going with a focus on identifying fraud. We worked in an Oracle environment and used a variety of OLAP techniques for analysis.", @"More recently, I've started a new role working on a project for the state government developing a web application for deployment on a tablet to help them more efficiently manage their public transport services. I've been working on the Front End using HTML, SASS and the Angular JS framework."];
    
    projects = [[NSArray alloc] initWithObjects:pixol, work, nil] ;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table view delegate methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ThirdViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ThirdViewCell"];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ThirdViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
        if ([indexPath row]%2 == 0) {
            cell.backgroundColor = [UIColor whiteColor];
        } else {
            cell.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:0.2];
        }
        
    }
    
    Project *project = projects[[indexPath row]];           // Get the project from the array
    
    cell.cellHeader.textColor = project.accentColor;
    cell.cellHeader.text = project.header;
    
    cell.cellInfo.text = project.introduction;
    cell.cellInfo.textColor = [UIColor lightGrayColor];
    
    [cell.projectIcon setImage:[UIImage imageNamed: project.projectIcon]];
    
    cell.disclosure.textColor =  project.accentColor;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CellDetailViewController *controller = [[CellDetailViewController alloc] initWithNibName:@"CellDetailViewController" bundle:nil];
    
    [self presentViewController:controller animated:YES completion:nil];
    
    // Pass project to controller
    [controller showViewWithProject: self.projects[[indexPath row]]];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 145;
}


@end
