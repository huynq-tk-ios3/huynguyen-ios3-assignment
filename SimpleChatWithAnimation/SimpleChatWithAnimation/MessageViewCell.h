//
//  MessageViewCell.h
//  SimpleChatWithAnimation
//
//  Created by admin on 4/17/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Message.h"

@interface MessageViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblLeft;
@property (weak, nonatomic) IBOutlet UILabel *lblRight;

- (void) update: (Message*) message;
- (CGFloat) labelHeight;

@end
