//
//  ViewController.m
//  CoreDataDemo
//
//  Created by admin on 5/4/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "User.h"
#import "AppDelegate.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createFetchController];
    
    [self fetchAllUsers];
}

- (void) insertAdminToUser {
    
    NSEntityDescription *entityDescription = [NSEntityDescription
                                              entityForName:NSStringFromClass([User class])
                                              inManagedObjectContext:APPDELEGATE.managedObjectContext];
    
    User *newUser = [[User alloc] initWithEntity:entityDescription
                           insertIntoManagedObjectContext:APPDELEGATE.managedObjectContext];
    
    newUser.user_name = @"admin";
    newUser.password = @"123";

    NSError* error;
    
    if(![newUser.managedObjectContext save:&error]) {
        NSLog(@"%@, %@", error, error.localizedDescription);
    }
    
}

- (void) createFetchController {
    
    NSFetchRequest *request = [NSFetchRequest
                               fetchRequestWithEntityName:NSStringFromClass([User class])];
    NSSortDescriptor *sort = [NSSortDescriptor
                              sortDescriptorWithKey:@"user_name" ascending:YES];
    request.sortDescriptors = @[sort];
    //Retrieve the main queue NSManagedObjectContext
    NSManagedObjectContext *moc = APPDELEGATE.managedObjectContext;
    
    self.fetchResultsController = [[NSFetchedResultsController alloc]
                                       initWithFetchRequest:request managedObjectContext:moc sectionNameKeyPath:nil
                                       cacheName:nil];
    [self.fetchResultsController setDelegate: self];
    
    NSError *error = nil;
    if(![self.fetchResultsController performFetch:&error]) {
        NSLog(@"Failed to initialize FetchedResultsController: %@\n%@", [error
                                                                         localizedDescription], [error userInfo]);
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(nullable NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(nullable NSIndexPath *)newIndexPath {
    
    User* user = (User*)anObject;
    NSLog(@"%@, %@", user.user_name, user.password);
    switch(type) {
        case NSFetchedResultsChangeInsert: break;
        case NSFetchedResultsChangeDelete: break;
        case NSFetchedResultsChangeUpdate: break;
        case NSFetchedResultsChangeMove: break;
    }
}

- (void) fetchAllUsers {
    
    NSManagedObjectContext *context = APPDELEGATE.managedObjectContext;
    
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:NSStringFromClass([User class])];
    
    NSError *error = nil;
    
//    NSArray *results = [context executeFetchRequest:request error:&error];
    self.users = (NSMutableArray<User*>*)[context executeFetchRequest:request error:&error];
    
    if (error != nil) {
        NSLog(@"%@, %@", error, error.localizedDescription);
        //Deal with failure
    }
    else {
        //Deal with success
        for (User* user in self.users) {
            NSLog(@"%@", user.user_name);
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        User* user = [self.users objectAtIndex:indexPath.row];
       
        [user.managedObjectContext deleteObject:user];
        [APPDELEGATE.managedObjectContext save:nil];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.users count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell;
    

    cell = [tableView dequeueReusableCellWithIdentifier:@"CellWithText"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellWithText"];
        
    }
    cell.textLabel.text = [self.users objectAtIndex:indexPath.row].user_name;
    
    return cell;
}

- (IBAction)addAdminClicked:(id)sender {
    [self insertAdminToUser];
}
@end
