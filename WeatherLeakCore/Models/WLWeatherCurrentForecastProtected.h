//
//  WLWeatherCurrentForecastProtected.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLWeatherCurrentForecast.h"


@interface WLWeatherCurrentForecast ()

@property (nonatomic, strong) NSDate *dateTime;
@property (nonatomic, strong) NSString *weatherMain;
@property (nonatomic, strong) NSString *weatherDescription;

@property (nonatomic, assign) NSUInteger clouds;
@property (nonatomic, assign) NSUInteger humidity;
@property (nonatomic, assign) NSUInteger pressure;
@property (nonatomic, assign) NSUInteger temp;
@property (nonatomic, assign) NSUInteger tempMax;
@property (nonatomic, assign) NSUInteger tempMin;
@property (nonatomic, assign) NSUInteger visibility;
@property (nonatomic, assign) NSUInteger windDegree;
@property (nonatomic, assign) NSUInteger windSpeed;

@end
