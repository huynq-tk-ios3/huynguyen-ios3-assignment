//
//  ViewController.m
//  Lab2_JSONConverter
//
//  Created by Huy Nguyen on 4/9/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (atomic, strong) NSString *JSONString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _JSONString = @"{\
    \"title\":\"example.com\",\
    \"link\":\"http://www.example.com\",\
    \"description\":\"Awesome news about junk\",\
    \"items\":[\
             {\
                 \"title\":\"An article\",\
                 \"link\":\"http://www.example.com/an-article\",\
                 \"descrition\":\"Some sample text here\",\
                 \"pubDate\":\"2008-10-27 11:06 EST\",\
                 \"author\":\"example author\"\
             },\
             {\
                 \"title\":\"Second\",\
                 \"link\":\"http://www.example.com/Seond\",\
                 \"descrition\":\"Some sample text here\",\
                 \"pubDate\":\"2008-10-25 23:20 EST\",\
                 \"author\":\"author mcauthor\"\
             },\
             {\
                 \"title\":\"third article\",\
                 \"link\":\"http://www.example.com/third-article\",\
                 \"descrition\":\"Some sample text here\",\
                 \"pubDate\":\"2008-10-25 23:18 EST\",\
                 \"author\":\"some other author\"\
             }\
             ]\
}";
    NSError *jsonError;
    NSData *objectData = [_JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:objectData
                                                         options:NSJSONReadingMutableContainers
                                                           error:&jsonError];
    NSArray *items =json[@"items"];
    
    
    
    for(id item in items) {
        NSLog(@"---------------------------------------");
        item[@"title"] = @"Anh Huy dep trai";
        item[@"link"] = @"http://www.facebook.com";
        for(id key in item){
            NSString* keyString = (NSString*) key;
            
            NSLog(@"%@ : %@", key, item[key]);
        }
    }
    
    NSError * err1;
    NSData * jsonData1 = [NSJSONSerialization  dataWithJSONObject:json options:0 error:&err1];
    NSString * aboutToSend = [[NSString alloc] initWithData:jsonData1   encoding:NSUTF8StringEncoding];
    NSLog(@"About to Send : %@",aboutToSend);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
