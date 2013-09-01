#import <Foundation/Foundation.h>
#import "employee.h"

int main (int argc, const char * argv[])
{
   
    employee *emp = [[employee alloc]init];
    [emp setName:@"Neha Raje"];
	[emp setDept:@"ISE"];
	[emp setEmpid:83];
	NSLog(@"\nReading employee data...\n");
	NSLog(@"\nName: %@\nDepartment: %@\nID: %d\n", [emp getName], [emp getDept], [emp getEmpid]);
	[emp release];

    return 0;
}



