//
//  Castle.m
//  ChessBoard
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Castle.h"

@implementation Castle

- (void) move:(NSInteger)x :(NSInteger)y {
    if (self.x == x) {
        self.y = y;
    } else if(self.y == y) {
        self.x = x;
    } else {
        NSLog(@"Invalid new positions");
    }
}

@end
