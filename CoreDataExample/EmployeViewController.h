//
//  EmployeViewController.h
//  CoreDataExample
//
//  Created by geniusport on 12/16/15.
//  Copyright (c) 2015 adeptPros. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface EmployeViewController : UIViewController
{
    AppDelegate *appObject;
    NSManagedObjectContext *context;
}
@property(nonatomic)NSManagedObject *managedObj;
@property(nonatomic,weak)IBOutlet UITextField *txt1;
@property(nonatomic,weak)IBOutlet UITextField *txt2;
@property(nonatomic,weak)IBOutlet UITextField *txt3;
-(IBAction)submitButtonAction:(id)sender;
-(IBAction)deleteButtonAction:(id)sender;
-(IBAction)updateButtonAction:(id)sender;
@end
