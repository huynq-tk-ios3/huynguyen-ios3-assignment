//
//  ChatTableViewCell.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/17/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ChatTableViewCell.h"

@implementation ChatTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    
    self.textLabel.textColor = [UIColor redColor];
    self.contentView.frame = CGRectMake(0.0f, 0.0f, 240.0f, 10.0f);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
