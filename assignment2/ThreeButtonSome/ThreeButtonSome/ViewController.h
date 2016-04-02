//
//  ViewController.h
//  ThreeButtonSome
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;

- (IBAction)btnTouchDown:(id)sender;

@end

