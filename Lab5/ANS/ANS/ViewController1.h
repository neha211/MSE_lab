//
//  ViewController1.h
//  ANS
//
//  Created by MSE on 19/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dynamiclabel;
- (IBAction)Logout:(id)sender;

@property (retain) NSString* name;

@end
