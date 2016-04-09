//
//  ViewController.m
//  Homework4_Assignment3
//
//  Created by Huy Nguyen on 4/9/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"
#import "ForgotPasswordViewController.h"
#import "HomeViewController.h"

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

- (IBAction)ButtonTouchUpInside:(id)sender {
    UIButton* button = (UIButton*)sender;
    
    RegisterViewController *regViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"RegisterView"];
    ForgotPasswordViewController *forgViewController = [self.storyboard
                                                        instantiateViewControllerWithIdentifier: @"ForgotPasswordView"];
    HomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
    switch (button.tag) {
        case 0: /* Login */
//            [self.navigationController presentViewController:homeViewController animated:YES completion:nil];
            [self presentViewController:homeViewController animated:YES completion:nil];
            break;
        case 1: /* Register */
            [self.navigationController pushViewController:regViewController animated:YES];
            break;
        case 2: /* Forgot password */
            [self.navigationController pushViewController:forgViewController animated:YES];
        default:
            break;
    }
}
@end
