#import <Foundation/Foundation.h>

@interface PhoneCard : NSObject
{
	NSString* name;
	NSString* email;
	int number;
}

@property(retain) NSString* name;
@property(retain) NSString* email;
@property int number;

-(void) print;

@end
