//
//  ViewController.m
//  DummyChat
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "ChatRoom.h"
#import "MessageViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray* chatRooms;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _chatRooms = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadData];
    
    [self.tbvChatRooms reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Class functions

- (void)loadData {
    /* Read file from resources */
    NSString *filePath =[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    
    NSError *error;
    NSString *fileContents =[NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:[fileContents dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&error];
    
    for (NSDictionary* dict in jsonArray) {
        ChatRoom* newChatRoom = [[ChatRoom alloc] initWithJSON:dict];
        [self.chatRooms addObject:newChatRoom];
    }
    NSLog(@"%lu", self.chatRooms.count);
}

#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _chatRooms.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    cell.textLabel.text = [_chatRooms[indexPath.row] desc];
    return cell;
}

# pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    MessageViewController* messageViewController = [self.storyboard
                                                    instantiateViewControllerWithIdentifier:@"Message"];
    messageViewController.messages = [_chatRooms[indexPath.row] transcript];
    [self.navigationController pushViewController:messageViewController animated:YES];
}

@end
