//
//  MobileAppDelegate.h
//  Mobile
//
//  Created by rupert on 5/03/11.
//  Copyright 2011 2RMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	NSString *dbPath;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) NSString *dbPath;


@end

