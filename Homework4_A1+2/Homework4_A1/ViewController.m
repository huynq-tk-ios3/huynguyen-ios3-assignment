//
//  ViewController.m
//  Homework4_A1
//
//  Created by Huy Nguyen on 4/9/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "DummyCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chatMessages = [[NSArray alloc] initWithObjects:
                         @"Hello",@"How are you?",@"I am fine, thanks", @"And you?", @"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"11", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chatMessages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indentifier = @"DummyCell";
    DummyCell* cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if(cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"DummyCell" owner:self options:nil];
        cell = nib[0];
    }
    
    NSString* text = (NSString*)_chatMessages[indexPath.row];
    if(indexPath.row % 4 == 0 || indexPath.row % 4 == 1) {
        cell.lblChat.text = text;
        cell.lblChatRight.text = @"";
        
        //cell.lblChat.hidden = NO;
        //cell.lblChatRight.hidden = YES;
        
    }
    else {
        cell.lblChat.text = @"";
        cell.lblChatRight.text = text;
        
        ///cell.lblChat.hidden = YES;
        //cell.lblChatRight.hidden = NO;
    }
    return cell;
}

@end
