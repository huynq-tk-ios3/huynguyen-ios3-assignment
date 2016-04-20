//
//  ViewController.m
//  ImageMover
//
//  Created by admin on 4/21/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) setImageLocation: (CGPoint)point;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imvMariaOzawa.layer.borderColor = [UIColor redColor].CGColor;
    
    self.imvMariaOzawa.layer.borderWidth = 2.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    UITouch* touch = touches.allObjects[0];
    CGPoint point = [touch preciseLocationInView:self.view];
    NSLog(@"Touched at: %f, %f", point.x, point.y);
    
    [self setImageLocation:point];
    
}

- (void) setImageLocation:(CGPoint)point {
    float width = self.imvMariaOzawa.frame.size.width;
    float height = self.imvMariaOzawa.frame.size.height;
    
    self.imvMariaOzawa.frame = CGRectMake(point.x - width/2, point.y - height/2, width, height);
}


@end
