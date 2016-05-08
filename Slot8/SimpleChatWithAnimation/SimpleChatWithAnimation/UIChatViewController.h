//
//  UIChatViewController.h
//  SimpleChatWithAnimation
//
//  Created by admin on 4/17/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatRoom.h"

@interface UIChatViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property ChatRoom* chatRoom;
@property (weak, nonatomic) IBOutlet UITableView *tvChatMessages;

@end
