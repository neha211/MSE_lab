//
//  ViewController.m
//  ANS
//
//  Created by MSE on 19/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    if([ _username.text isEqualToString:_password.text] )
    {
        //navigate to a new view
        ViewController1 *v = [[ViewController1 alloc]
                initWithNibName:@"ViewController1" bundle:nil];
        v.name = _username.text;
        
        [self addChildViewController:v];
        [self.view addSubview:v.view];
        [v didMoveToParentViewController:self];
        v=nil;
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error!!" message:@"Invalid input" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}
@end
