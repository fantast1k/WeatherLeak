//
//  WLNetworkClientProtocol.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WLCityModel.h"
#import "WLWeatherCurrentForecast.h"


@protocol WLNetworkClientProtocol <NSObject>

- (BOOL)getCurrentForecastForCity:(WLCityModel *)city
                       completion:(void (^)(WLWeatherCurrentForecast *forecast, NSError *err))completion;

@end
