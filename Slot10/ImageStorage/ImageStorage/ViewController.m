//
//  ViewController.m
//  ImageStorage
//
//  Created by admin on 4/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSUserDefaults* defaults;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _defaults = [NSUserDefaults standardUserDefaults];
    NSString* name = (NSString*)[_defaults objectForKey:@"name"];
    if (name != nil) {
        self.tfName.text = name;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)copyClicked:(id)sender {
    NSString* imageResourceUrl = [[NSBundle mainBundle] pathForResource:@"maria_ozawa" ofType:@"jpg"];
    
    
    
    NSString *destPath = [[self getDocumentDirectory] stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager] copyItemAtPath:imageResourceUrl toPath:destPath error:nil];
    NSLog(@"%@", destPath);
    
    destPath = [[self getCachesDirectory] stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager] copyItemAtPath:imageResourceUrl toPath:destPath error:nil];
    NSLog(@"%@", destPath);
    
    destPath = [NSTemporaryDirectory() stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager] copyItemAtPath:imageResourceUrl toPath:destPath error:nil];
    
}

- (IBAction)deleteClicked:(id)sender {
    
    NSString *destPath = [[self getDocumentDirectory] stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager] removeItemAtPath:destPath error:nil];
    NSLog(@"%@", destPath);
    
    destPath = [[self getCachesDirectory] stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager]  removeItemAtPath:destPath error:nil];
    NSLog(@"%@", destPath);
    
    destPath = [NSTemporaryDirectory() stringByAppendingPathComponent:@"maria.jpg"];
    [[NSFileManager defaultManager] removeItemAtPath:destPath error:nil];
}

- (IBAction)copyTextFile:(id)sender {
    
    NSString* imageResourceUrl = [[NSBundle mainBundle] pathForResource:@"textfile" ofType:@"txt"];
   
   
    NSString *destPath = [[self getDocumentDirectory] stringByAppendingPathComponent:@"textfile.txt"];
    [[NSFileManager defaultManager] copyItemAtPath:imageResourceUrl toPath:destPath error:nil];
    NSLog(@"%@", destPath);
    
}

- (IBAction)editTextFile:(id)sender {
    
    NSString *destPath = [[self getDocumentDirectory] stringByAppendingPathComponent:@"textfile.txt"];
    
    NSData* contentOfFile =[[NSFileManager defaultManager] contentsAtPath:destPath];
    
    NSString* contentInString = [[NSString alloc] initWithData:contentOfFile encoding:NSUTF8StringEncoding];
    
    
    NSString* newContent = [contentInString stringByAppendingString:@"\nHi there"];
    
    NSData* data = [newContent dataUsingEncoding:NSUTF8StringEncoding];
    
    [data writeToFile:destPath atomically:YES];
    
    NSLog(@"%@", destPath);
}

- (NSString*) getCachesDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory,
                                                         NSUserDomainMask, YES);
    
    
    NSString *cacheDirectoryPath = [paths objectAtIndex:0];
    return cacheDirectoryPath;
}

- (NSString*) getDocumentDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    
    
    NSString *documentsDirectoryPath = [paths objectAtIndex:0];
    return documentsDirectoryPath;
}


- (IBAction)syncWithUserDefaults:(id)sender {
    
    NSString* name = _tfName.text;
    [self.defaults setObject:name forKey:@"name"];
    [_defaults synchronize];
}
@end
