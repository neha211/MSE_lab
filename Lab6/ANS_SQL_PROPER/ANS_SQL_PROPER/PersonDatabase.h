//
//  PersonDatabase.h
//  ANS_SQL_PROPER
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface PersonDatabase : NSObject
{
    sqlite3 *database;
}
+(PersonDatabase*) database;
-(NSArray*) getAllPersons;
-(void)insertion:(int)uid :(NSString*)name:(NSString*)address;



@end
