//
//  Chess.h
//  ChessBoard
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chess : NSObject

@property NSInteger x;
@property NSInteger y;

- (void) setPositions:(NSInteger) x : (NSInteger) y;

- (void) move:(NSInteger)x : (NSInteger)y;

- (void) eat:(Chess*) enemy;

@end
