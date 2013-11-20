//
//  PersonDatabase.m
//  ANS_SQL_PROPER
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "PersonDatabase.h"
#import "personInfo.h"

@implementation PersonDatabase

static PersonDatabase *database;

+(PersonDatabase *)database{
    if(database == nil){
        database = [[PersonDatabase alloc]init];
    }
    return database;
    
}

-(id)init{
    self = [super init];
    if (self){
        NSString *sqliteDB = [[NSBundle mainBundle]pathForResource:@"employee" ofType:@"sqlite3"];
        
        if (sqlite3_open([sqliteDB UTF8String], &database)!= SQLITE_OK){
            NSLog(@"Failed to open database");
        }
    }
    return self;
}


-(NSArray *)getAllPersons{
    NSMutableArray *returnArray = [[NSMutableArray alloc]init];
    
    NSString *query = @"SELECT * FROM person";
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil)== SQLITE_OK){
        while(sqlite3_step(statement)==SQLITE_ROW){
            int uniqueId = sqlite3_column_int(statement, 0);
            char *nameChars = (char *)sqlite3_column_text(statement, 1);
            char *addressChars = (char *)sqlite3_column_text(statement, 2);
            NSString *name = [[NSString alloc]initWithUTF8String:nameChars];
            NSString *address = [[NSString alloc]initWithUTF8String:addressChars];
            
            personInfo *info = [[personInfo alloc]initWithUniqueId:uniqueId name:name address:address];
            
            [returnArray addObject:info];
        }
        sqlite3_finalize(statement);
    }
    else
    {
        NSLog(@"error in select");
    }
    return returnArray;
    sqlite3_close(database);
    
}

-(void)insertion:(int)uid :(NSString *)name:(NSString*)address
{
    char * error="Error!";
    NSString *query = [NSString stringWithFormat:@"insert into person values ( %d , \"%@ \" , \"%@\" );",uid,name,address];

     if(sqlite3_exec(database, [query UTF8String], NULL, NULL,&error)== SQLITE_OK){
             NSLog(@"insertion of data complete! ");
         
         
         }
     else{
         NSLog(@"Error: Not able to Prepare Statement");
     }
    sqlite3_close(database);
  }
   
@end
