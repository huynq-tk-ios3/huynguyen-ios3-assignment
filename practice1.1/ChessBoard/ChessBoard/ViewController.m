//
//  ViewController.m
//  ChessBoard
//
//  Created by Huy Nguyen on 4/3/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *chessBoard = (UIView*)self.view.subviews.firstObject;
    int tag = 0;
    for (UIView *subView in chessBoard.subviews) {
        
        NSLog(@"view: %@", [subView class]);
        
        if([subView isKindOfClass:[UIButton class]]) {
            UIButton *button = ((UIButton*)subView);
            [button addTarget:self action:@selector(btnChessClicked:) forControlEvents:UIControlEventTouchUpInside];
//            [button setTag:tag];
            tag = tag+1;
        }
    }
    
}

- (IBAction)btnChessClicked:(UIButton*)sender {
    NSLog(@"OK : %ld", (long)sender.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
