//
//  personInfo.h
//  ANS_SQL_PROPER
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface personInfo : NSObject
{
    int uniqueId;
    NSString *name;
    NSString *address;
}

@property(nonatomic,assign)int uniqueId;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *address;

-(id) initWithUniqueId:(int)uniqueId name:(NSString *)name address:(NSString *)address;

@end
