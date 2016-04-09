//
//  ViewController.h
//  TwoScreenCommunication
//
//  Created by Huy Nguyen on 4/2/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

- (IBAction)buttonTouchDown:(id)sender;
- (IBAction)uiSwitchEditingChanged:(id)sender;
- (IBAction)uiSwitchPrimaryActionTrigger:(id)sender;
- (IBAction)uiSwitchValueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *swCheck;

@property (weak, nonatomic) IBOutlet UIPickerView *pvTest;
@end

