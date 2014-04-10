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
    dollarlog.languages  = @"Objective-C, Photoshop & Illustrator";
    dollarlog.accentColor = [UIColor colorWithRed:0.3 green:0.85 blue:0.39 alpha:1];
    dollarlog.introduction = @"A personal finance app that allows users to simply track and analyse their spending habits utilising Machine Learning techniques.";
    dollarlog.projectIcon = @"dollarlog_icon.png";
    dollarlog.projectDescription = [NSString stringWithFormat:@"%@\r\r%@",@"Dollarlog is a personal finance app that I've been working on in my spare time. It allows users to track and analyse their spending habits. Current solutions only tell people how they spend, but don't give suggestions on how to save - this is what Dollarlog aims to do.", @"I've utilised a variety of Machine Learning techniques that allows data entry and analysis to be really quick and easy. For example, the K-Nearest Neighbour algorithm allows me to predict the category of an expense before the user enters it. Dollarlog is still in development, I'm hoping to release it in the next few months."];
    dollarlog.leads = [[NSArray alloc] initWithObjects:@"Using iOS Core Frameworks such as Core Data and Local Notifications.", @"Working with third party controls developed by the community.", @"Implementing Machine Learning algorithms in Objective-C.", nil];
    
    Project *muro = [[Project alloc] init];
    muro.header = @"Muro";
    muro.role = @"Developer, Designer & Founder";
    muro.languages = @"Objective-C, HTML, CSS, Javascript, PHP, mySQL, Photoshop";
    muro.accentColor = [UIColor colorWithRed:0.52 green:0.33 blue:0.89 alpha:1];
    muro.introduction = @"Muro lets you share, meet and connect with people that go to the same events as you. Accepted into an incubator and recieved some seed funding.";
    muro.projectIcon = @"muro_icon.png";
    muro.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"Muro is the name of a company that I started with two friends from University. We where fortunate enough to be accepted into an incubator in Sydney where we recieved a small amount of seed funding and working space for 6 months. Over this time, we had to validate our idea, figure out how to monetise (which was extremely difficult), meet with users and investors and build the product.", @"Muro was platform for people at events to interact and meet new people. We also worked with event organisers to provide them with in depth statistics about demographics for their events. I worked as a designer and web developer, working closely with our iOS developer. I used Photoshop and Illustrator for all our design work, and the site was the usual HTML/CSS/Javascript MAMP stack.", @"Muro is still on the app store today and we have over a thousand registered users. Unfortunately, we don't actively develop it anymore. Nevertheless, it was an amazing experience and I learnt so much about building things people love to use and how important it is to involve end users in the development process."];
    muro.leads = [[NSArray alloc] initWithObjects:@"Accepted in Sydney University's INCUBATE and recieved seed funding.", @"Worked in partnerships with some of the biggest events in Sydney.", @"Learned how difficult it is to build something people love.", nil];
    
    Project *jobgps = [[Project alloc] init];
    jobgps.header = @"JobGPS";
    jobgps.languages = @"HTML, CSS, Javascript, PHP, mySQL, Python";
    jobgps.role = @"Developer & Designer";
    jobgps.accentColor = [UIColor colorWithRed:0.2 green:0.67 blue:0.69 alpha:1];
    jobgps.introduction = @"JobGPS provides tailored job recommendations based on a users past employment and their education. I built their platform and web application.";
    jobgps.projectIcon = @"jobgps_icon.png";
    jobgps.projectDescription = [NSString stringWithFormat:@"%@\r\r%@", @"JobGPS is a company that is aiming to take on some of the bigger job search engines by providing tailored reccomendations based on a users past employment and their education. I was hired by JobGPS to build their product. This involved building the backend and the front end .", @"It was the first time I had built an entire service from the ground up by myself. The limited time frame taught me a lot about making the most of the time you have and prioritising features. The most challenging part was working with the non-technical founders and trying to communicate technical limitations while building the recommendation engine."];
    jobgps.leads = [[NSArray alloc] initWithObjects:@"Building an entire platform from the ground up.", @"Balancing features and tight timelines to produce an awesome product.", @"Working with non-technical founders was fun and challenging", nil];
    
    projects = [[NSArray alloc] initWithObjects:dollarlog, muro, jobgps, nil] ;
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
//    [self addPulseAnimationToView:self.downPrompt];
    
}

- (void) viewDidAppear:(BOOL)animated {

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
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 145;
}

@end
