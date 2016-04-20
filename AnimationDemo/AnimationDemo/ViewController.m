//
//  ViewController.m
//  AnimationDemo
//
//  Created by admin on 4/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) rotate2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [UIView animateWithDuration:1.0f animations:^{
        self.button.center = self.view.center;
    }];
    

    [self rotate];
    
    [self rotate2];
    

}

- (void) rotate2 {
    
    self.animatingView.center = self.view.center;
    
    [UIView animateWithDuration:1.0f delay:0.0f usingSpringWithDamping:0.5f initialSpringVelocity:1.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.animatingView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height - self.animatingView.frame.size.height/2);
    } completion:^(BOOL finished) {
        [self rotate2];
    }];
}

- (void) rotate{
    
//    UIViewAnimationOptions *options = [UIViewAnimationOption]
    
    [UIView animateWithDuration:0.1f delay:(0.0f)
                        options:UIViewAnimationOptionCurveLinear animations:^{
                            self.imvfan.transform = CGAffineTransformMakeRotation(M_2_PI + M_2_PI * _rotation);
                        }
                     completion:^(BOOL finished){
                         _rotation++;
                         [self rotate];
                     }];
    
   
    
//    [UIView animateWithDuration:1.0f animations:
//                     completion:^(BOOL finished) {
//                         _rotation++;
//                         [self rotate];}
//     ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
