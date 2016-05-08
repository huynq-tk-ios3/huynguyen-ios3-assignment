//
//  ViewController.m
//  SwipeDetector
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addSwipeGestureWithDirection:UISwipeGestureRecognizerDirectionUp];
    
    [self addSwipeGestureWithDirection:UISwipeGestureRecognizerDirectionDown];
    
    [self addSwipeGestureWithDirection:UISwipeGestureRecognizerDirectionLeft];
    
    [self addSwipeGestureWithDirection:UISwipeGestureRecognizerDirectionRight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) addSwipeGestureWithDirection:(UISwipeGestureRecognizerDirection) direction {
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(didSwipe:)];
    
    swipeGesture.direction = direction;
    
    
    swipeGesture.delegate = self;
    
    [self.view addGestureRecognizer:swipeGesture];
}

- (void)addSwipeGesture;
{
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(didSwipe:)];
    
    swipeGesture.direction = UISwipeGestureRecognizerDirectionUp|
    UISwipeGestureRecognizerDirectionDown | UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
    
    
    swipeGesture.delegate = self;
    
    [self.view addGestureRecognizer:swipeGesture];
    
}

- (void)didSwipe:(UISwipeGestureRecognizer *)swipeGesture;
{
    NSLog(@"Direction: %d", (int)swipeGesture.direction);
    switch (swipeGesture.direction) {
        case UISwipeGestureRecognizerDirectionUp:
            NSLog(@"UISwipeGestureRecognizerDirectionUp");
            _lbl.text = @"UP";
            break;
        case UISwipeGestureRecognizerDirectionDown:
            NSLog(@"UISwipeGestureRecognizerDirectionDown");
            _lbl.text = @"DOWN";
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            NSLog(@"UISwipeGestureRecognizerDirectionLeft");
            _lbl.text = @"LEFT";
            break;
        case UISwipeGestureRecognizerDirectionRight:
            NSLog(@"UISwipeGestureRecognizerDirectionRight");
            _lbl.text = @"RIGHT";
            break;
            
        default:
            
            break;
            
    }
    NSLog(@"DID Swipe");
}

@end
