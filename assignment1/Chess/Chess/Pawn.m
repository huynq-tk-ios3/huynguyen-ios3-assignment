//
//  Pawn.m
//  ChessBoard
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Pawn.h"

@implementation Pawn

- (void) move:(NSInteger)x :(NSInteger)y {
    if(x == self.x) {
        if (self.y + 1 == y || (self.y + 2 == y && self.x == 0)) {
            self.y = y;
        } else {
            NSLog(@"Invalid new positions");
        }
    }
    else {
        NSLog(@"Invalid new positions");
    }
}



@end
