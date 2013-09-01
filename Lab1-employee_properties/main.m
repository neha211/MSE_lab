#import<Foundation/Foundation.h>
#import "employee.h"

int main(int argc, char *argv[])
{
	employee *emp = [[employee alloc]init];
	[emp setName:@"XYZ"];
	[emp setDept:@"ASDF"];
	[emp setEmpid:456123];
	NSLog(@"\nReading employee data:\n");
	NSLog(@"\nName: %@\nDepartment: %@\nID: %d\n", [emp name], [emp dept], [emp empid]);
	[emp release];
	return 0;
}