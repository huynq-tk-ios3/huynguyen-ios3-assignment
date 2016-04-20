//
//  ViewController.h
//  AnimationDemo
//
//  Created by admin on 4/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imvfan;
@property (weak, nonatomic) IBOutlet UIView *animatingView;

@property int rotation;

- (void) rotate;

@end

