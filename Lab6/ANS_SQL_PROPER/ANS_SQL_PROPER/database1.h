//
//  database1.h
//  ANS_SQL_PROPER
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface database1 : NSObject
{
    NSString* database;
}

+(PersonDatabase*) database;
-(NSArray*) getAllPersons;

@end
