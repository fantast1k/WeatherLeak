//
//  WLViewControllerFactory.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 26/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WLCitiesListIO.h"
#import "WLWeatherIO.h"


@interface WLViewControllerFactory : NSObject

+ (UIViewController<WLCitiesListOutput> *)citiesViewControllerWithInput:(id<WLCitiesListInput>)input;
+ (UIViewController<WLWeatherOutput> *)weatherViewControllerWithInput:(id<WLWeatherInput>)input;

@end
