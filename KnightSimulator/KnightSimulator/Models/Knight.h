//
//  Knight.h
//  KnightSimulator
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Knight : NSObject

@property int x;
@property int y;

- (instancetype) initWithLocation: (int)x : (int)y;
- (void) setLocation: (int)x : (int)y;
- (BOOL) isValidMove: (int)x : (int)y;

@end
