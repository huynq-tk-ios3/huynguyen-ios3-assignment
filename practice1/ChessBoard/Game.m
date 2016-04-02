//
//  Game.m
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Game.h"

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.player1 = [[Player alloc]init];
        self.player2 = [[Player alloc]init];
        self.arrWhiteChess = [[NSMutableArray alloc]init];
        self.arrBlackChess = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void) checkKill{
    NSLog(@"Prepare to check kill");
}

- (void) isGameOver{
    NSLog(@"Game is over yet?");
}

@end
