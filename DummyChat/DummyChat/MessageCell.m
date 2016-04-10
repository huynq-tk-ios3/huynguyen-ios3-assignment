//
//  MessageCell.m
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell

- (void)awakeFromNib {
    // Initialization code
    _lblLeft.layer.cornerRadius = 3.0f;
    _lblLeft.layer.masksToBounds = true;
    _lblRight.layer.cornerRadius = 3.0f;
    _lblRight.layer.masksToBounds = true;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
