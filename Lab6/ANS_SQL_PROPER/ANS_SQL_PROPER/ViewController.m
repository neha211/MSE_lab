//
//  ViewController.m
//  ANS_SQL_PROPER
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"
#import "personInfo.h"
#import "PersonDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   /* NSArray *personInf = [[PersonDatabase database]getAllPersons];
    
    for (personInfo *info in personInf)
    {
        NSLog(@"%d, %@, %@",info.uniqueId, info.name, info.address);
    }*/
    
    [[PersonDatabase database]insertion:20 :@"Su" :@"RR Nagar"];
    
    NSArray *personInf1 = [[PersonDatabase database]getAllPersons];
    
    for (personInfo *info in personInf1)
    {
        NSLog(@"%d, %@, %@",info.uniqueId, info.name, info.address);
    }}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
