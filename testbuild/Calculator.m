//
//  Calculator.m
//  testbuild
//
//  Created by Karl Eriksson on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(int)add:(int)a to:(int)b {

    return a+b;
}



-(float)divide:(int)a by:(int)b
{
    float result =  (float)a/b;
    if (result==INFINITY) {
        [NSException raise:@"Cannot divide by zero!"
                    format:@"Not possible to divide %d with %d", a,b];
    }
    return result;
}
@end
