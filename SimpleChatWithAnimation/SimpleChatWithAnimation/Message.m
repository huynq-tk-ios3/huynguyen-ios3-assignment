//
//  Message.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "Message.h"

@implementation Message

- (instancetype) initWithJSON: (NSDictionary*) JSON{
    self = [super init];
    if(self) {
        self.identity = JSON[@"id"];
        self.text = JSON[@"message"];
        self.alias = JSON[@"alias"];
    }
    return self;
}

- (BOOL) isMine{
    return [self.alias isEqualToString:@""];
}

@end
