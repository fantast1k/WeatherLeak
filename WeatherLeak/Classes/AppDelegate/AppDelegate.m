//
//  AppDelegate.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 26/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "AppDelegate.h"

#import <WeatherLeakView/WeatherLeakView.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [WLViewControllerFactory citiesViewControllerWithInput:[NSObject new]];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
