//
//  Knight.m
//  ChessBoard
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Knight.h"

@implementation Knight

- (void) move:(NSInteger)x :(NSInteger)y {
    long dx = labs(x - self.x);
    long dy = labs(y - self.y);
    
    if ((dx == 2 && dy == 3) || (dx == 3 && dy == 2)){
        self.x = x;
        self.y = y;
    } else {
        NSLog(@"Invalid new positions");
    }
}

@end
