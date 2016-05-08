//
//  Message.h
//  SimpleChatWithAnimation
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (nonatomic, strong) NSString* text;
@property (nonatomic, strong) NSString* identity;
@property (nonatomic, strong) NSString* alias;

- (instancetype) initWithJSON: (NSDictionary*) JSON;
- (BOOL) isMine;


@end
