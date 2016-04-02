//
//  Piece.m
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Piece.h"

@implementation Piece

- (instancetype)initWithParams:(PieceType) type
                         color:(BOOL) color x:(int)x y:(int)y {

    self = [super init];
    if (self) {
        self.type = type;
        self.color = color;
        self.x = x;
        self.y = y;
    }
    return self;
}


@end
