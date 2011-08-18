//
//  testbuildAppDelegate.h
//  testbuild
//
//  Created by Karl Eriksson on 8/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class testbuildViewController;

@interface testbuildAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet testbuildViewController *viewController;

@end
