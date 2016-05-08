//
//  ChatRoom.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ChatRoom.h"
#import "Message.h"

@implementation ChatRoom

- (instancetype) initWithJSON:(NSDictionary *)JSON {
    self = [super init];
    
    if(self) {
        self.identity = JSON[@"id"];
        self.messages = [[NSMutableArray alloc] init];
        self.desc = JSON[@"description"];
        for (NSDictionary* messageJSON in JSON[@"transcript"]) {
            Message* message = [[Message alloc] initWithJSON:messageJSON];
            [self.messages addObject:message];
        }
    }
    
    return self;
}

@end
