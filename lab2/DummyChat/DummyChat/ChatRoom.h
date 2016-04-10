//
//  ChatRoom.h
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatRoom : NSObject

@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *identity;
@property (nonatomic, strong) NSMutableArray *transcript;

- (instancetype)initWithJSON:(NSDictionary *)jsonDict;

@end
