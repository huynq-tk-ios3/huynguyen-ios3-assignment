//
//  ViewController.m
//  PlayWithImageAndGesture
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addPinchGesture];
    [self addRotateGesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addPinchGesture;
{
    UIPinchGestureRecognizer *pinchGesture =
    [[UIPinchGestureRecognizer alloc]initWithTarget:self
                                             action:@selector(didPinch:)];
    pinchGesture.delegate = self;
    [self.view addGestureRecognizer:pinchGesture];
    
}

- (void)addRotateGesture;
{
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(didRotate:)];
    
    rotateGesture.delegate = self;
    
    [self.view addGestureRecognizer:rotateGesture];
    
}

- (void)didPinch:(UIPinchGestureRecognizer *)pinchGesture;
{
    
    NSLog(@"PINCH: %f", pinchGesture.scale);
    
    _imvDemo.transform = CGAffineTransformScale(_imvDemo.transform, pinchGesture.scale, pinchGesture.scale);
    
    pinchGesture.scale = 1;
    
}

- (void)didRotate:(UIRotationGestureRecognizer *)rotateGesture;
{
    
    NSLog(@"ROTATE: %f", rotateGesture.rotation);
    
    _imvDemo.transform = CGAffineTransformRotate(_imvDemo.transform, rotateGesture.rotation);
    
    rotateGesture.rotation = 0;
    
}

@end
