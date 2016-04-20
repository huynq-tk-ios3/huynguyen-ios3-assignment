//
//  ImageWithGesture.m
//  ImageMover2
//
//  Created by admin on 4/21/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ImageWithGesture.h"

@implementation ImageWithGesture

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    UITouch* touch = touches.allObjects[0];
    CGPoint point = [touch preciseLocationInView:self.superview];
    [self move:point];
}

- (void)move:(CGPoint)point{
    
    float width = self.frame.size.width;
    float height = self.frame.size.height;
    
    self.frame = CGRectMake(point.x - width/2, point.y - height/2, width, height);
}



@end
