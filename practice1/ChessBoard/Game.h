//
//  Game.h
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property Player* player1;
@property Player* player2;
@property NSMutableArray *arrWhiteChess;
@property NSMutableArray *arrBlackChess;

- (void) checkKill;
- (void) isGameOver;

@end
