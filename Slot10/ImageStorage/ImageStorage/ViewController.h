//
//  ViewController.h
//  ImageStorage
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)copyClicked:(id)sender;
- (IBAction)deleteClicked:(id)sender;
- (IBAction)copyTextFile:(id)sender;
- (IBAction)editTextFile:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *tfName;

- (IBAction)syncWithUserDefaults:(id)sender;

@end

