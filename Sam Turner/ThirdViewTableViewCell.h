//
//  ThirdViewTableViewCell.h
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewTableViewCell : UITableViewCell

@property (weak, nonatomic) UIColor *cellAccentColor;

@property (weak, nonatomic) IBOutlet UILabel *cellHeader;
@property (weak, nonatomic) IBOutlet UILabel *cellSubtitle;

@property (weak, nonatomic) IBOutlet UITextView *cellInfo;

@property (weak, nonatomic) IBOutlet UIImageView *projectIcon;
@end
