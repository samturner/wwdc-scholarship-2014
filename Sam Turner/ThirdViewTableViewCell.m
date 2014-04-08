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
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    self.disclosure.font = [UIFont fontWithName:kFontAwesomeFamilyName size:18];
    self.disclosure.text = [NSString fontAwesomeIconStringForEnum:FAChevronRight];
    self.disclosure.alpha = 0.4;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
