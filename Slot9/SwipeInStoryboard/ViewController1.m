//
//  ViewController1.m
//  SwipeInStoryboard
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self addPanGesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addPanGesture
{
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(didPan:)];
    //    panGesture.minimumNumberOfTouches = 1;
    //    panGesture.maximumNumberOfTouches = 1;
    panGesture.delegate = self;
    [self.view addGestureRecognizer:panGesture];
    //    [_secondView addGestureRecognizer:panGesture];
}

- (void)didPan:(UIPanGestureRecognizer *)panGesture;
{
    NSLog(@"VC1: PAN");
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
