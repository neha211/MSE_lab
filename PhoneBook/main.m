#import <Foundation/Foundation.h>
#import "PhoneBook.h"

int main(int argc, char* argv[])
{	
	NSAutoreleasePool *pool =[[NSAutoreleasePool alloc]init];
	PhoneBook *b=[[PhoneBook alloc]initWithName:@" "];
	[b addContact];
	NSLog(@"Checkpoint1:\n");
	[b list];
	
	[b addContact];
	NSLog(@"Checkpoint2:\n");
	[b list];
	
	id var;
	if((var = [b findPersonByName: @"neha"]) != nil)
	{
		[var print];
	}
	
	[b removeContact: @"q"];
	[b list];
	[pool drain];
	return 0;
}