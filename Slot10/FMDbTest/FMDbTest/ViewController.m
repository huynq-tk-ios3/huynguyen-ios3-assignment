//
//  ViewController.m
//  FMDbTest
//
//  Created by admin on 5/4/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import "FMDB.h"

@interface ViewController ()
@property FMDatabase* database;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.tfPassword.secureTextEntry = YES;
    
    
    
    NSString* dbPath = [[NSBundle mainBundle] pathForResource:@"dict" ofType:@"db"];
    
    NSLog(@"%@", dbPath);
    
    self.database = [FMDatabase databaseWithPath:dbPath];
    
    [self logAllUser];
    
    
}

- (void) logAllUser {
    [self.database open];
    
    FMResultSet* results = [self.database executeQuery:@"SELECT * FROM user"];
    
    while([results next]) {
        NSLog(@"id,username,password,lastlogin : %d, %@, %@, %@", [results intForColumn:@"id"], [results stringForColumn:@"username"], [results stringForColumn:@"password"], [results stringForColumn:@"last_login"]);
    }
    
    
    [self.database close];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRegisterClicked:(id)sender {
    NSString* username = self.tfUserName.text;
    NSString* password = self.tfPassword.text;
    
    [self.database open];
    
//    NSString* query = [NSString stringWithFormat:@"INSERT INTO user (username, password) VALUES (%@, %@)" ,username,password];
    
    //[self.database executeQuery:query];
    [self.database executeUpdateWithFormat:@"INSERT INTO user (username, password) VALUES (%@, %@)" ,username,password];

    
    [self.database close];
    
    [self logAllUser];
}
@end
