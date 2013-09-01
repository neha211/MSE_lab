#import "employee.h"

@implementation employee: NSObject

-(void) setName : (NSString*) n
{
    name = n;
}

-(void) setDept : (NSString*) d
{
	dept = d;
}

-(void) setEmpid : (int) e
{
	empid = e;
}


-(NSString*) getName
{
	return name;
}

-(NSString*) getDept
{
	return dept;
}

-(int) getEmpid
{
	return empid;
}


@end