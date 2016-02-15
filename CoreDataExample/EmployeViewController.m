//
//  EmployeViewController.m
//  CoreDataExample
//
//  Created by geniusport on 12/16/15.
//  Copyright (c) 2015 adeptPros. All rights reserved.
//

#import "EmployeViewController.h"
#import "AppDelegate.h"
#import "EmpDetails.h"
@interface EmployeViewController ()

@end

@implementation EmployeViewController
@synthesize txt1,txt2,txt3,managedObj;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [txt1 resignFirstResponder];
    [txt2 resignFirstResponder];
    [txt3 resignFirstResponder];
}
-(void)viewWillAppear:(BOOL)animated
{
    EmpDetails *empObj=(EmpDetails *)managedObj;
    txt1.text=[managedObj valueForKey:@"empID"];
    txt2.text=[empObj empName];
    txt3.text=[empObj empLocation];
}
- (void)viewDidLoad
{
   appObject=[[UIApplication sharedApplication]delegate];
    context=[appObject managedObjectContext];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction)submitButtonAction:(id)sender
{
    EmpDetails *employeObject=[NSEntityDescription insertNewObjectForEntityForName:@"EmpDetails" inManagedObjectContext:context];
    [employeObject setEmpID:txt1.text];
    [employeObject setEmpName:txt2.text];
    [employeObject setEmpLocation:txt3.text];
    NSError *error;
    if([context save:&error])
    {
        NSLog(@"Record Saved");
    }
    else{
        NSLog(@"Record Not Saved");
    }
}
-(IBAction)deleteButtonAction:(id)sender
{
    [context deleteObject:managedObj];
    NSError *error;
    if ([context save:&error]) {
        NSLog(@"Record Deleted");
    }
    else
        NSLog(@"Record Not Deleted");
}
-(IBAction)updateButtonAction:(id)sender
{
    [managedObj setValue:txt1.text forKey:@"empID"];
    [managedObj setValue:txt2.text forKey:@"empName"];
    [managedObj setValue:txt3.text forKey:@"empLocation"];
    NSError *error;
    if ([context save:&error]) {
        NSLog(@"Record Updated");
    }
    else
    {
        NSLog(@"Record Not Updated");
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
