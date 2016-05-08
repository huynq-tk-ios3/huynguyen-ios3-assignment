//
//  ViewController.h
//  SwipeInStoryboard
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

@property BOOL isSecondView;

@property (weak, nonatomic) IBOutlet UIView *secondView;

@end

