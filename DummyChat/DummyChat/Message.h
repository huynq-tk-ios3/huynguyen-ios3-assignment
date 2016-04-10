//
//  Message.h
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (nonatomic, strong) NSString *identity;
@property (nonatomic, strong) NSString *alias;
@property (nonatomic, strong) NSString *message;

- (instancetype)initWithJSON:(NSDictionary *)jsonDict;

@end
