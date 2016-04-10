//
//  MessageViewController.h
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray* messages;
@property (weak, nonatomic) IBOutlet UITableView *tbvMessages;

@end
