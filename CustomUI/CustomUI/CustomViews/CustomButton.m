//
//  CustomButton.m
//  CustomUI
//
//  Created by admin on 4/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self customLayout];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self customLayout];
    }
    return self;
}

- (void) customLayout{
    self.layer.cornerRadius = 10.0f;
}

@end
