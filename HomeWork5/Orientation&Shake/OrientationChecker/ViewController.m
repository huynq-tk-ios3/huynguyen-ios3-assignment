//
//  ViewController.m
//  OrientationChecker
//
//  Created by admin on 4/21/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(deviceOrientationDidChangeNotification:) name:UIDeviceOrientationDidChangeNotification object:nil];
    self.lblShake.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)deviceOrientationDidChangeNotification:(NSNotification*)note
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    self.labelContainer.center = self.view.center;
    
    switch (orientation) {
        case UIDeviceOrientationPortrait:
            NSLog(@"Portrait");
            self.lblOrientation.text = @"Portrait";
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@"LandscapeLeft");
            self.lblOrientation.text = @"Landscape";
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@"LandscapeRight");
            self.lblOrientation.text = @"Lanscape";
            break;
        default:
            break;
    }
}

- (BOOL)canBecomeFirstResponder{
    return YES;
}

- (void)viewDidAppear:(BOOL)animated{
    [self becomeFirstResponder];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //self.lblShake.text=@"Shaking";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Shaking" message:@"OH YEAHHH" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //self.lblShake.text=@"Not shaking";
}

@end
