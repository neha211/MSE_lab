#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@implementation PhoneCard:NSObject

@synthesize name;
@synthesize email;
@synthesize number;

-(void) print
{
	NSLog(@"Name: %@ \n", name);
	NSLog(@"E-mail: %@ \n", email);
	NSLog(@"Number: %d \n", number);	
}

@end