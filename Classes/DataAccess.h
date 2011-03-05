//
//  DataAccess.h
//  Mobile
//
//  Created by rupert on 27/10/09.
//	Copyright 2011 2RMobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

@interface DataAccess : NSObject {
	FMDatabase *db;
	FMResultSet *rs;
}

- (NSMutableArray*)getRecords;

@end
