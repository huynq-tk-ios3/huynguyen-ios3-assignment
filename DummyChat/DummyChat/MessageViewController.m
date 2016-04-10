//
//  MessageViewController.m
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "MessageViewController.h"
#import "MessageCell.h"
#import "Message.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Messages";
    _tbvMessages.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MessageCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MessageCell"];
    if(!cell) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"MessageCell" owner:self options:nil];
        cell = nib[0];
    }
    
    Message* message = _messages[indexPath.row];
    
    if([message.alias isEqualToString:@""]) {
        /* My message */
        cell.lblRight.text = message.message;
        cell.lblLeft.hidden = YES;
        cell.lblRight.hidden = NO;
    } else {
        cell.lblLeft.text = message.message;
        cell.lblRight.hidden = YES;
        cell.lblLeft.hidden = NO;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
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
