//
//  CellDetailViewController.h
//  Sam Turner
//
//  Created by Sam Turner on 6/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellDetailViewController : UIViewController

- (IBAction)dismissModal:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *dismissButton;
@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;


@end
