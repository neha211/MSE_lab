#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@interface PhoneBook:NSObject
{
	NSString *Name;
	NSMutableArray *Contacts;
}

-(id)init;
-(id)initWithName :(NSString*) n;

-(void)addContact;
-(void)removeContact :(NSString*) n;
-(id)findPersonByName : (NSString*) n;
-(void)list;

@end