//
//  ThirdViewTableViewCell.m
//  Sam Turner
//
//  Created by Sam Turner on 7/04/2014.
//  Copyright (c) 2014 Sam Turner. All rights reserved.
//

#import "ThirdViewTableViewCell.h"

@implementation ThirdViewTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
//        self.selectedBackgroundView.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
