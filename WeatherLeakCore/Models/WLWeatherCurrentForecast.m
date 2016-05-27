//
//  WLWeatherCurrentForecast.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLWeatherCurrentForecast.h"
#import "WLWeatherCurrentForecastProtected.h"

#import <YYModel/YYModel.h>


@implementation WLWeatherCurrentForecast

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"clouds": @{@"clouds" : @"all"},
             @"humidity": @"main.humidity",
             @"pressure": @"main.pressure",
             @"temp": @"main.temp",
             @"tempMax" : @"main.temp_max",
             @"tempMin" : @"main.temp_min",
             @"visibility": @"visibility",
             @"windDegree": @"wind.deg",
             @"windSpeed": @"wind.speed"
             };
}

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    NSNumber *timestamp = dic[@"dt"];
    if (![timestamp isKindOfClass:[NSNumber class]]) return NO;
    NSArray *weather = dic[@"weather"];
    if (![weather isKindOfClass:[NSArray class]] || [weather count] <= 0) return NO;

    _dateTime = [NSDate dateWithTimeIntervalSince1970:timestamp.floatValue];
    _weatherMain = weather[0][@"main"];
    _weatherDescription = weather[0][@"description"];
    return YES;
}

@end
