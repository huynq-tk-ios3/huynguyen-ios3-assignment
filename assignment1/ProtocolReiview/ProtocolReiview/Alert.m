//
//  Alert.m
//  ProtocolReiview
//
//  Created by Huy Nguyen on 3/29/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "Alert.h"

@implementation Alert

- (instancetype)init
{
    self = [super init];
    if (self) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^ {
            if(self.alertListener != nil) {
                [self.alertListener onAlert];
            }
        });
    }
    return self;
}

- (instancetype) initWithParams:(id<AlertListener>)listener {
    
    self = [super init];
    if(self) {
        self.alertListener = listener;
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^ {
            if(self.alertListener != nil) {
                [self.alertListener onAlert];
            }
        });

    }
    return self;
}


@end
