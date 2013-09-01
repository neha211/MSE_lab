#import<Foundation/Foundation.h>

@interface employee: NSObject
{
	NSString *name;
	NSString *dept;
	int empid;
}
@property(retain) NSString *name;
@property(retain) NSString *dept;
@property(assign) int empid;

@end