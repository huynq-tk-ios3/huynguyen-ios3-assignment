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
    
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    self.pvTest.dataSource = self;
    self.pvTest.delegate = self;
}

- (IBAction)uiSwitchEditingChanged:(id)sender {
    NSLog(@"uiSwitchEditingChanged");
}

- (IBAction)uiSwitchPrimaryActionTrigger:(id)sender {
    NSLog(@"uiSwitchPrimaryActionTrigger");
    NSLog(@" %d", self.swCheck.isOn);
}

- (IBAction)uiSwitchValueChanged:(id)sender {
    NSLog(@"uiSwitchValueChanged");
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
}



@end
