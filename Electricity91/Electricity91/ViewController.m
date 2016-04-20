//
//  ViewController.m
//  Electricity91
//
//  Created by admin on 4/19/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) rotate;
@property int rotation;
@property float duration;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rotation = 0;
    self.duration = 1.0f;
    // Do any additional setup after loading the view, typically from a nib.
    [self rotate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)speed1TouchedUp:(id)sender {
    
    _duration = 1.0f;
    
    [UIView animateWithDuration:0.0
                          delay:0.0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{}
                     completion:^(BOOL finished){}
     ];
    
    [self rotate];
    
    NSLog(@"Speed1");
}

- (IBAction)speed2TouchedUp:(id)sender {
    _duration = 0.5f;
    [UIView animateWithDuration:0.0
                          delay:0.0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{}
                     completion:^(BOOL finished){}
     ];
    [self rotate];
    NSLog(@"Speed2");
}

- (IBAction)speed3TouchedUp:(id)sender {
    _duration = 0.1f;
    [self.view.layer removeAllAnimations];
    [self rotate];
    
    NSLog(@"Speed3");
    
    
    
}

- (void)rotate {
    [UIView animateKeyframesWithDuration:_duration delay:0.0f
                                 options:UIViewAnimationOptionCurveLinear
                              animations:^{
        self.imvFan.transform = CGAffineTransformMakeRotation(M_2_PI + M_2_PI * _rotation);
    }
                              completion:^(BOOL finished) {
                                  _rotation++;
                                  [self rotate];
                              }];
}
@end
