//
//  WLWeatherPresenterIO.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <WeatherLeakCore/WeatherLeakCore.h>


@protocol WLWeatherPresenterInput <NSObject>

- (void)getWeatherData;

@end



@protocol WLWeatherPresenterOutput <NSObject>

- (void)showCurrentForecast:(WLWeatherCurrentForecast *)forecast;

@end
