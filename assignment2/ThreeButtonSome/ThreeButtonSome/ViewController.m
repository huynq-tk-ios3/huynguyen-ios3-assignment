//
//  ViewController.m
//  ThreeButtonSome
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
	
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTouchDown:(id)sender {
    NSString *text = @"";
    if(sender == self.btn1) {
        text = @"button1";
    } else if(sender == self.btn2) {
        text = @"button2";
    } else if(sender== self.btn3) {
        text = @"button3";
    }
    NSLog(text);
}

@end