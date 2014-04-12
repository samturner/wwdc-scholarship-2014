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
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.downPrompt.font = [UIFont fontWithName:kFontAwesomeFamilyName size:25];
    self.downPrompt.text = [NSString fontAwesomeIconStringForEnum:FAChevronDown];
    [self populateProjects];
}

- (void) viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [self setNeedsStatusBarAppearanceUpdate];
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
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 145;
}

- (void) populateProjects {
    Project *pixol = [[Project alloc] init];
    pixol.header = @"Pixol";
    pixol.role = @"Developer, Designer & Founder";
    pixol.languages  = @"HTML, CSS, Javascript, Photoshop";
    pixol.accentColor = [UIColor colorWithRed:1 green:0.82 blue:0.09 alpha:1];
    pixol.introduction = @"A web design company I started in high school. We had multiple clients that provided us with a great exposure and experience.";
    pixol.projectIcon = @"pixol_icon.png";
    pixol.projectDescription = [NSString stringWithFormat:@"%@\r\r%@",@"Pixol is the web design company that I started in the later years of High School with one of my best friends. As a high school student, this was great - it sure beat working at McDonalds!", @"It was during this time that I began to discover my passion for developing products that meaningfully impact people's lives. I also began to develop the technical skills that I needed to make this a reality. This also taught me about the value of good communication between both the clients and my co-founder."];
    pixol.leads = [[NSArray alloc] initWithObjects:@"Learnt the basics of web design and development.",@"Working with clients and the value of teamwork.",@"Discovered my passion for developing simple, beautiful and useful software.", nil];
    
    Project *work = [[Project alloc] init];
    work.header = @"Work";
    work.role = @"Developer & Designer";
    work.languages = @"HTML, CSS, Angular JS, SASS, Oracle";
    work.accentColor = [UIColor colorWithRed:1 green:0.23 blue:0.19 alpha:1];
    work.introduction = @"For the past year I've been working at PwC on everything from Data Analysis to Front End Development";
    work.projectIcon = @"work_icon.png";
    work.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"For the past year and a half, I've been working for PriceWaterhouse Coopers doing a variety of things from Data Analysis to Front End Development.", @"I started doing Data Analysis over financial data, giving clients insight into how and where there money is going with a focus on identifying fraud. We worked in an Oracle environment and used a variety of OLAP techniques for analysis.", @"More recently, I've started a new role working on a project for the state government developing a web application for deployment to Mobile Safari on an iPad to help them more efficiently manage their public transport services. It's been a great challenge working on such a high profile project in an environment that is so difficult to change. I've learnt how important it is to involve customers in the development of a product."];
    work.leads = [[NSArray alloc] initWithObjects:@"Playing a major role in the development of high profile software.",@"Learning really cool frameworks like Angular JS and SASS.", @"Learning Data Analysis techniques - something out of my comfort zone.", nil];
    
    Project *university = [[Project alloc] init];
    university.header = @"University";
    university.role = @"Student Dude";
    university.languages = @"Bachelor of Computer Science and Technology";
    university.accentColor = [UIColor colorWithRed:0.11 green:0.49 blue:0.95 alpha:1];
    university.introduction = @"I'm studying a Bachelor of Computer Science and I love it. I particularly enjoy learning about Aritificial Intelligence and Data Mining.";
    university.projectIcon = @"university_icon.png";
    university.projectDescription = [NSString stringWithFormat:@"%@\r\r%@\r\r%@", @"I'm in my third year of a Bachelor of Computer Science and Technology at the University of Sydney and I love every minute of it. I've studied a whole bunch of languages like Java, C, C++, Python, SQL and learned all about the more theoretical aspects of programming like Trees, Linked Lists and Big O.", @"I've also taken a few classes outside of my area of study as I'm also interested in Economics and Development studies. Next semester I also plan on taking a class in Astronomy.", @"So far, I've particularly enjoyed my courses for Artificial Intelligence and Data Mining. I'm extremely interested in the ways in which we can unlock vast amounts of data that we generate every day to understand more about ourselves and the world around us."];
    university.leads = [[NSArray alloc] initWithObjects:@"Incredibly interested in Artificial Intelligence and Data Mining courses.", @"Achieving a distinction average across all subjects.", @"Producing a radio show with one of the student-run clubs on campus.", nil];
    
    projects = [[NSArray alloc] initWithObjects:pixol, university, work, nil] ;
}


@end
