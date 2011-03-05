//
//  DataAccess.m
//  Mobile
//
//  Created by rupert on 27/10/09.
//	Copyright 2011 2RMobile. All rights reserved.
//

#import "DataAccess.h"
#import "MobileAppDelegate.h"

@implementation DataAccess

- (id)init{
	if( self = [super init]){
		NSLog(@"DataAccess.init");
		MobileAppDelegate *app = (MobileAppDelegate *)[[UIApplication sharedApplication] delegate];
		db = [[FMDatabase alloc] initWithPath:app.dbPath];
	}
	
	return self;
}

- (void)dealloc{
	[db release];

	[super dealloc];
}

- (NSMutableArray*)getRecords{
	NSLog(@"DataAccess.getMainSections");
	
	NSMutableArray *array = [[[NSMutableArray alloc] initWithObjects:nil] autorelease];
	
	[db open];
	rs = [db executeQuery:@"SELECT * FROM sections"];
	
	if ([db hadError]) {
        NSLog(@"Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
    }
	
	while ([rs next]) {
		NSArray *arrayObjects = [[[NSArray alloc] initWithObjects:	
								  [rs stringForColumn:@"id"],
								  [rs stringForColumn:@"title"], 
								 nil] autorelease];
		
		NSArray *arrayKeys = [[[NSArray alloc] initWithObjects:@"id", @"title", nil] autorelease];
		
		NSDictionary *obj = [[[NSDictionary alloc] initWithObjects:arrayObjects forKeys:arrayKeys] autorelease];
		
		[array addObject:obj];
	}
	
	NSLog(@"DataAccess.getMainSections: %d found", [array count]);
	
	[rs close];
	[db close];
	
	return array;
}

@end
