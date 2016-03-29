//
//  Chess.m
//  ChessBoard
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Chess.h"

@implementation Chess

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void) setPositions:(NSInteger)x :(NSInteger)y {
    self.x = x;
    self.y = y;
}


- (void) eat:(Chess *)enemy {
        NSString *selfClassString = NSStringFromClass([self class]);
        NSString *enemyClassString = NSStringFromClass([enemy class]);
    
        NSLog(@"%@ eated %@", selfClassString, enemyClassString);
}


@end
