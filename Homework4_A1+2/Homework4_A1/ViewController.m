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
                         @"Hello",@"How are you?",@"I am fine, thanks", @"And you?", nil];
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
    cell.lblChat.text = self.chatMessages[indexPath.row];
    if(indexPath.row % 4 == 0 || indexPath.row % 4 == 1) {
        cell.lblChat.textAlignment = UITextAlignmentLeft;
    }
    else {
        cell.lblChat.textAlignment = UITextAlignmentRight;
    }
    return cell;
}

@end
