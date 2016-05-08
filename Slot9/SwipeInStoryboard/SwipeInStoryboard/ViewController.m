//
//  ViewController.m
//  SwipeInStoryboard
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property UIView* secondView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _isSecondView = NO;
    
//    UIViewController* vc1 = [[UIViewController alloc]initWithNibName:@"ViewController1" bundle:nil];
//    
    CGRect frame = self.view.frame;
//    self.secondView = vc1.view;
    
//    [self.view addSubview:vc1.view];
    
    _secondView.frame = CGRectMake(frame.size.width, 0, frame.size.width, frame.size.height);
    
//    [self addPanGesture:self];
    [self addPanGesture];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)addPanGesture
{
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(didPan:)];
    //    panGesture.minimumNumberOfTouches = 1;
    //    panGesture.maximumNumberOfTouches = 1;
    panGesture.delegate = self;
    [self.view addGestureRecognizer:panGesture];
//    [_secondView addGestureRecognizer:panGesture];
}

- (void)addPanGesture2
{
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(didPan:)];
    //    panGesture.minimumNumberOfTouches = 1;
    //    panGesture.maximumNumberOfTouches = 1;
    panGesture.delegate = self;
    [_secondView addGestureRecognizer:panGesture];
    //    [_secondView addGestureRecognizer:panGesture];
}


- (void)didPan:(UIPanGestureRecognizer *)panGesture;
{
    
    CGPoint translation = [panGesture translationInView:self.view];

    NSLog(@"x,y : %f,%f", translation.x, translation.y);
    
    if(!_isSecondView) {
        if(panGesture.state == UIGestureRecognizerStateEnded) {
            NSLog(@"PAN Ended!");
            NSLog(@"view x : %f", panGesture.view.frame.origin.x);
            CGRect frame = panGesture.view.frame;
            if(panGesture.view.frame.origin.x < -panGesture.view.frame.size.width / 2) {
                panGesture.view.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
                
                _secondView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
                
                _isSecondView = YES;
            } else {
                panGesture.view.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
                _secondView.frame = CGRectMake(frame.size.width, 0, frame.size.width, frame.size.height);
            }
        }
        else {
            float nextX = panGesture.view.center.x + translation.x;
            
            
            if(translation.x < 0) {
                panGesture.view.center = CGPointMake(
                                                     nextX,
                                                     panGesture.view.   center.y );
            }
        }
        NSLog(@"DID PAN-DRAGGING");
        
    }
    
    else {
        //NSLog(@"%d", (int)panGesture.view.center.x);
        float nextX = _secondView.center.x + translation.x;
        CGRect frame = self.view.frame;
        if(panGesture.state == UIGestureRecognizerStateEnded) {
            if(_secondView.frame.origin.x > frame.size.width / 2) {
                _secondView.center = CGPointMake(3 * frame.size.width/2, _secondView.center.y);
                _isSecondView = NO;
            } else {
                _secondView.center = CGPointMake(frame.size.width/2, _secondView.center.y);
            }
        }
        else {
            if(translation.x > 0) {
                _secondView.center = CGPointMake(
                                                 nextX,
                                                 panGesture.view.   center.y );
            }
        }
        
        
        
        NSLog(@"DID PAN-DRAGGING 2");

    }
    
    [panGesture setTranslation:CGPointMake(0, 0)
                        inView:self.view];
    
        
    //} else if (translation.x > 0){
//        panGesture.view.center = CGPointMake(nextX,
//                                             panGesture.view.center.y );
//        
//        //we did calculate translation(dragging) from previous position, so need to reset translation to {0,0}
//        [panGesture setTranslation:CGPointMake(0, 0)
//                            inView:self.view];
    //}
    
    
    
    
    
    
}

@end
