//
//  ViewController.m
//  TwoScreenCommunication
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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

- (IBAction)buttonTouchDown:(id)sender {
    NSLog(@"Button touched");
    SecondViewController *secondViewController = [[SecondViewController alloc]init];
    
}
@end
