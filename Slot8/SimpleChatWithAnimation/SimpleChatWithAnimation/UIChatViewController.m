//
//  UIChatViewController.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/17/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "UIChatViewController.h"
#import "Message.h"
#import "MessageViewCell.h"

@interface UIChatViewController ()

@property NSMutableArray* messages;

@end

@implementation UIChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _messages = _chatRoom.messages;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TablViewSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _messages.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Message* message = _messages[indexPath.row];

    MessageViewCell* cell = (MessageViewCell*) ([[NSBundle mainBundle] loadNibNamed:@"MessageViewCell" owner:nil options:nil][0]);

    [cell update: message];
    
    return [cell labelHeight] + 30.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Message* message = ((Message *)_messages[indexPath.row]);
    
    MessageViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MessageViewCell"];
    
    if(!cell) {
        NSArray* nibs = [[NSBundle mainBundle] loadNibNamed:@"MessageViewCell" owner:self options:nil];
        cell = (MessageViewCell*)nibs[0];
    }
    
    [cell update:message];
    
    return cell;
}



#pragma mark - UITableCellDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Message* message = (Message*)_messages[indexPath.row];
    
    float cellWidth = cell.frame.size.width;
    float cellHeight = cell.frame.size.height;
    float cellY = cell.frame.origin.y;
   
    
    if([message.alias isEqualToString:@""]){
        cell.frame = CGRectMake(self.tvChatMessages.bounds.size.width, cellY, cellWidth, cellHeight);
        [UIView animateWithDuration:0.5f animations:^{
            cell.frame = CGRectMake(self.tvChatMessages.bounds.size.width - cellWidth, cellY, cellWidth, cellHeight);
        }];
    }
    else {
        cell.frame = CGRectMake(-cellWidth, cellY, cellWidth, cellHeight);
        [UIView animateWithDuration:0.5f animations:^{
            cell.frame = CGRectMake(0, cellY, cellWidth, cellHeight);
        }];
    }
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
