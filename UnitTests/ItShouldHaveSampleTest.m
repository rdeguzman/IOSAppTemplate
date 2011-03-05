//
//  ItShouldHaveSmoke.m
//  Tutorial
//
//  Created by Brett Schuchert on 11/9/10.
//  Copyright 2010 Brett L. Schuchert. Use at will, just don't blame me.
//

#import <GHUnitIOS/GHUnit.h>

@interface ItShouldHaveSampleTest : GHTestCase {
    NSString *someVariableToInitialize;
}
@end

@implementation ItShouldHaveSampleTest

-(void)setUp {
    someVariableToInitialize = @"Hello World";
}

-(void)tearDown {
    someVariableToInitialize = nil;
}

-(void)testThatItDoesHaveItsSmoke {
    GHAssertEquals(@"Hello World", someVariableToInitialize, nil);
}
@end