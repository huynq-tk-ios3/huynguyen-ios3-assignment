//
//  CustomSlider.m
//  ButtonCusmization
//
//  Created by admin on 4/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "CustomSlider.h"

@implementation CustomSlider

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)trackRectForBounds:(CGRect)bounds{
    bounds.size.height = 100;
    return bounds;
}

@end
