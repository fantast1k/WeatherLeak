//
//  AppDelegate.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 26/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "AppDelegate.h"
#import "WLModuleFactory.h"

#import <WeatherLeakView/WeatherLeakView.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [WLModuleFactory weatherWireframe].viewController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
