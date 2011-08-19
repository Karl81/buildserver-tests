//
//  testbuildTests.m
//  testbuildTests
//
//  Created by Karl Eriksson on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "testbuildTests.h"
#import "Calculator.h"


@implementation testbuildTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAdd
{
    Calculator *calculator = [[Calculator alloc] init];
    int result = [calculator add:5 to:6];
    int expected = 11;
    STAssertEquals(expected, result, @"We expected %d, but it was %d",expected,result);
}

-(void)testDivideByZero
{
    Calculator* calculator = [[Calculator alloc] init];
    STAssertThrows([calculator divide:5 by:0], @"We expected an exception to be raised when dividing by 0");
}



-(void)testDivide
{
    Calculator* calculator = [[Calculator alloc] init];
    float expected = 2.5;
    float result = [calculator divide:5 by:2];
    STAssertEquals(expected, result, @"We expected %f, but it was %f",expected,result);
}

-(void)testDivideLarge
{
    Calculator* calculator = [[Calculator alloc] init];
    float expected = 10;
    float result = [calculator divide:20 by:2];
    STAssertEquals(expected, result, @"We expected %f, but it was %f",expected,result);
}

@end
