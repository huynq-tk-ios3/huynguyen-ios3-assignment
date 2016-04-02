//
//  Player.m
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype) initWithParams:(NSString*) name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}


@end
