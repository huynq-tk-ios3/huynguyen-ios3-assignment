//
//  ChatRoom.h
//  SimpleChatWithAnimation
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatRoom : NSObject

@property NSString* identity;
@property NSString* desc;
@property NSMutableArray* messages;

- (instancetype) initWithJSON: (NSDictionary *) JSON;

@end
