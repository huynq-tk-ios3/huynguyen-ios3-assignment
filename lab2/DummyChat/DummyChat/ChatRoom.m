//
//  ChatRoom.m
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ChatRoom.h"
#import "Message.h"

@implementation ChatRoom

- (instancetype)initWithJSON:(NSDictionary *)jsonDict {
    self = [super init];
    if(self){
        self.identity = jsonDict[@"id"];
        self.desc = jsonDict[@"description"];
        self.transcript = [[NSMutableArray alloc] init];
        for (NSDictionary *json in jsonDict[@"transcript"]) {
            Message* newMessage = [[Message alloc]initWithJSON:json];
            [self.transcript addObject:newMessage];
        }
    }
    return self;
}

@end
