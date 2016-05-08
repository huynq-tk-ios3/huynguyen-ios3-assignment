//
//  ViewController.h
//  CoreDataDemo
//
//  Created by admin on 5/4/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController <NSFetchedResultsControllerDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSFetchedResultsController* fetchResultsController;
@property NSMutableArray <User*> *users;

- (IBAction)addAdminClicked:(id)sender;

@end

