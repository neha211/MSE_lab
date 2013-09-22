#import <Foundation/Foundation.h>
#import "PhoneBook.h"

@implementation PhoneBook:NSObject

-(id)init
{
	[self initWithName : @"My Name" ];
	return self;
}
-(id)initWithName:(NSString *)n
{
	[super init];
	if(self)
	{
		Name = [[NSString alloc] initWithString: n];
		Contacts = [[NSMutableArray alloc]init];
	}
	return self;		
}

-(void)addContact
{
	PhoneCard *c=[[PhoneCard alloc]init];
	char temp[50];
	int num;
	
	NSLog(@"\nEnter the name of the contact\n");
	scanf("%s",temp);
	NSString* name_ns = [[NSString alloc] initWithUTF8String:temp];
	[c setName:name_ns];

	NSLog(@"\nEnter the e-mail id of the contact\n");
	scanf("%s",temp);
	NSString* email_ns = [[NSString alloc] initWithUTF8String:temp];
	[c setEmail:email_ns];
	
	NSLog(@"\nEnter the number of the contact\n");
	scanf("%d",&num);
	[c setNumber:num];
	
	[Contacts addObject:c];
}

-(void)removeContact :(NSString*) n
{
	NSLog(@"Removing Contact: %@\n", n);
	id rcard;		
	for(id card in Contacts)
	{
		if([[card name] isEqual:n])
		{
			rcard = card;
		}
	}
	if(rcard == nil)
	{
		NSLog(@"Contact not found!!\n");
		return;
	}
	[Contacts removeObject:rcard];
	[rcard release];		
}

-(void)list
{
	NSLog(@"List of all contatcs:\n");

	NSLog(@"PhoneBook : %@ \n",Name);
	NSLog(@"-------------\n");
	for(id card in Contacts)
	{
		[card print];
		NSLog(@"-------------\n");
	}
}

-(id)findPersonByName : (NSString*) n
{
	NSLog(@"Searching for Contact... %@\n", n);
	id rcard;		
	for(id card in Contacts)
	{
		if([[card name] isEqual:n])
		{
			rcard = card;
			NSLog(@"Contact Found!!\n");
		}
	}
	if(rcard == nil)
	{
		NSLog(@"Contact not found!!\n");
		return nil;
	}	
	return rcard;
}

@end