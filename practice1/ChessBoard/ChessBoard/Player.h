//
//  Player.h
//  ChessBoard
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *name;
@property int numberOfTurn;

- (instancetype) initWithParams:(NSString*) name;

@end
