//
//  ViewController.h
//  FMDbTest
//
//  Created by admin on 5/4/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tfUserName;

@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

@property (weak, nonatomic) IBOutlet UIButton *btnRegister;

- (IBAction)btnRegisterClicked:(id)sender;
@end

