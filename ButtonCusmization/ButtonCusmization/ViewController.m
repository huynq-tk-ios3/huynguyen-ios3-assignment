//
//  ViewController.m
//  ButtonCusmization
//
//  Created by admin on 4/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    CAGradientLayer *btnGradient = [CAGradientLayer layer];
    btnGradient.frame = _button1.bounds;
    btnGradient.colors = [NSArray arrayWithObjects:
                          (id)[[UIColor colorWithRed:48.0f / 255.0f green:63.0f / 255.0f blue:159.0f / 255.0f alpha:1.0f] CGColor],
                          (id)[[UIColor colorWithRed:68.0f / 255.0f green:138.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f] CGColor],
                          nil];
    [_button1.layer insertSublayer:btnGradient atIndex:0];
    
    CAGradientLayer *btnGradient2 = [CAGradientLayer layer];
    btnGradient2.frame = _button2.bounds;
    btnGradient2.colors = [NSArray arrayWithObjects:
                          (id)[[UIColor colorWithRed:48.0f / 255.0f green:63.0f / 255.0f blue:250.0f / 255.0f alpha:1.0f] CGColor],
                          (id)[[UIColor colorWithRed:68.0f / 255.0f green:138.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f] CGColor],
                          nil];
    [_button2.layer insertSublayer:btnGradient2 atIndex:0];
    
    
    self.imageview.layer.cornerRadius = self.imageview.frame.size.width / 2;
    self.imageview.clipsToBounds = YES;
    self.imageview.layer.borderWidth = 3.0f;
    self.imageview.layer.borderColor = [UIColor whiteColor].CGColor;
    
    
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI_2);
    _slider.transform = trans;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
