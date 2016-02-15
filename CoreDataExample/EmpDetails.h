//
//  EmpDetails.h
//  CoreDataExample
//
//  Created by geniusport on 12/16/15.
//  Copyright (c) 2015 adeptPros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface EmpDetails : NSManagedObject

@property (nonatomic, retain) NSString * empName;
@property (nonatomic, retain) NSString * empID;
@property (nonatomic, retain) NSString * empLocation;

@end
