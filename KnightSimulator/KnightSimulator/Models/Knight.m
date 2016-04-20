//
//  Knight.m
//  KnightSimulator
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "Knight.h"

@implementation Knight

- (instancetype) initWithLocation:(int)x :(int)y{
    self = [super init];
    if(self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

- (BOOL)isValidMove:(int)x :(int)y {
    int deltaX = abs(x - self.x);
    int deltaY = abs(y - self.y);
    
//    NSLog(@"x,y,_x,_y: %d,%d,%d,%d", x,y,_x,_y);
    if((deltaX == 2 && deltaY == 1) || (deltaX == 1 && deltaY == 2))
        return YES;
    return NO;
}

- (void)setLocation:(int)x :(int)y{
    _x  =x;
    _y = y;
}

@end
