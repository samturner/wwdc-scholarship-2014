//
//  ThirdViewController.m
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdViewTableViewCell.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    // Do any additional setup after loading the view from its nib.
    
    // Build the project data
    Project *dollarlog = [[Project alloc] init];
    dollarlog.header = @"Dollarlog";
    dollarlog.role = @"Developer & Designer";
    dollarlog.languages  = @"Objective-C";
    dollarlog.accentColor = [UIColor colorWithRed:0.3 green:0.85 blue:0.39 alpha:1];
    dollarlog.introduction = @"Dollarlog is a personal finance app that allows users to track their spending with an emphasis on simplicity.";
    dollarlog.projectIcon = @"dollarlog_icon.png";
    dollarlog.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"Dollarlog as an iPhone app that I've recently been developing in my spare time. I wanted to build something that people love and push my skills and develop a more in depth understanding of iOS as a platform.",@"Dollarlog is a personal finance application, it lets users track and analyse their spending habits. I wanted to build Dollarlog because I felt like the solutions that currently exist for expense tracking are needlessly complex and don't really solve the problem. They tell people how the spend, but don't necessarily give suggestions on how to save - this is what Dollarlog aims to do.", @"So far, it's been great diving even deeper into iOS. The app is still in development, but I'm hoping that I'll be able to release it in the next few months."];
    
    Project *muro = [[Project alloc] init];
    muro.header = @"Muro";
    muro.role = @"Developer & Designer";
    muro.languages = @"Objective-C, HTML, CSS, Javascript, PHP, mySQL, Photoshop";
    muro.accentColor = [UIColor colorWithRed:0.52 green:0.33 blue:0.89 alpha:1];
    muro.introduction = @"Muro lets you share, meet and connect with people that go to the same events as you. Accepted into an incubator and recieved some seed funding.";
    muro.projectIcon = @"muro_icon.png";
    muro.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"Muro is the name of a company that I started with two friends from University. We where fortunate enough to be accepted into an incubator in Sydney where we recieved a small amount of seed funding and working space for 6 months. Over this time, we had to validate our idea, figure out how to monetise (which was extremely difficult), meet with users and investors and build the product.", @"Muro was platform for people at events to interact and meet new people. We also worked with event organisers to provide them with in depth statistics about demographics for their events. I worked as a designer and web developer, working closely with our iOS developer. I used Photoshop and Illustrator for all our design work, and the site was the usual HTML/CSS/Javascript MAMP stack.", @"Muro is still on the app store today and we have over a thousand registered users. Unfortunately, we don't actively develop it anymore. Nevertheless, it was an amazing experience and I learnt so much about building things people love to use and how important it is to involve end users in the development process."];
    
    Project *jobgps = [[Project alloc] init];
    jobgps.header = @"JobGPS";
    jobgps.languages = @"HTML, CSS, Javascript, PHP, mySQL";
    jobgps.role = @"Developer & Designer";
    jobgps.accentColor = [UIColor colorWithRed:0.27 green:0.77 blue:0.96 alpha:1];
    jobgps.introduction = @"JobGPS provides tailored job recommendations based on a users past employment and their education. I built their platform and web application.";
    jobgps.projectIcon = @"jobgps_icon.png";
    jobgps.projectDescription = @"";
    
    projects = [[NSArray alloc] initWithObjects:dollarlog, muro, jobgps, nil] ;
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    
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
        
        if ([indexPath row]%2 == 1) {
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
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 145;
}

@end
