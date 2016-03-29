//
//  Alert.h
//  ProtocolReiview
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AlertListener <NSObject>

- (void) onAlert;

@end

@interface Alert : NSObject

- (instancetype) initWithParams:(id<AlertListener>) listener;

@property id<AlertListener> alertListener;

@end

