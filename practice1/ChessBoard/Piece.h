//
//  Piece.h
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {KING, PAWN, ROOK, KNIGHT} PieceType;

@interface Piece : NSObject


@property PieceType type;
@property BOOL color;
@property int x;
@property int y;

- (instancetype)initWithParams:(PieceType) type
                         color:(BOOL) color x:(int)x y:(int)y;

- (BOOL) isMoveValid:(NSMutableArray*) arrChess;

@end
