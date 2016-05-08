//
//  User+CoreDataProperties.h
//  CoreDataDemo
//
//  Created by admin on 5/4/16.
//  Copyright © 2016 Techkids. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface User (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *user_name;
@property (nullable, nonatomic, retain) NSString *password;

@end

NS_ASSUME_NONNULL_END
