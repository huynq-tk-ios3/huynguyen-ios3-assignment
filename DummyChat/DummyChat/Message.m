//
//  Message.m
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Message.h"

@implementation Message

- (instancetype)initWithJSON:(NSDictionary *)jsonDict {
    self = [super init];
    if (self) {
        self.identity = jsonDict[@"id"];
        self.alias = jsonDict[@"alias"];
        self.message = jsonDict[@"message"];
    }
    return self;
}

@end
