//
//  ViewController.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import "ChatRoom.h"
#import "UIChatViewController.h"

@interface ViewController ()

@property NSMutableArray* chatRooms;

- (void) loadDataFromJSON;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadDataFromJSON];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chatRooms.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ChatRoom* chatRoom = ((ChatRoom *)self.chatRooms[indexPath.row]);
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = chatRoom.desc;

    return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tvMain deselectRowAtIndexPath:indexPath animated:NO];
    UIChatViewController* chatViewController = (UIChatViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ChatMessageView"];
    
    chatViewController.chatRoom = self.chatRooms[indexPath.row];
    
    [self.navigationController pushViewController:chatViewController animated:YES];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    
    
//    float cellWidth = cell.frame.size.width;
//    float cellHeight = cell.frame.size.height;
//    float cellY = cell.frame.origin.y;
//    
//    
//    if(indexPath.row % 3) {
//        cell.frame = CGRectMake(-cellWidth, cellY, cellWidth, cellHeight);
//        [UIView animateWithDuration:0.5f animations:^{
//            cell.frame = CGRectMake(0, cellY, cellWidth, cellHeight);
//        }];
//    }
//    else {
//        cell.frame = CGRectMake(self.tvMain.bounds.size.width, cellY, cellWidth, cellHeight);
//        [UIView animateWithDuration:0.5f animations:^{
//            cell.frame = CGRectMake(self.tvMain.bounds.size.width - cellWidth, cellY, cellWidth, cellHeight);
//        }];
//    }
}


- (void)loadDataFromJSON {
    NSString* jsonPath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    NSLog(@"%@", jsonPath);
    
    NSError* error;
    NSString* contentOfJsonFile = [NSString stringWithContentsOfFile:jsonPath encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"%@", contentOfJsonFile);
 
    NSData* data = [contentOfJsonFile dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableArray *chatRoomDicts = (NSMutableArray*)[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    self.chatRooms = [[NSMutableArray alloc]init];
    for(NSDictionary *chatRoomDict in chatRoomDicts)
    {
        ChatRoom *chatRoom = [[ChatRoom alloc]initWithJSON:chatRoomDict];
        [_chatRooms addObject:chatRoom];
    }
}

@end
