//
//  WLOpenWeatherMapClient.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLOpenWeatherMapClient.h"
#import "WLCityModelProtected.h"
#import "WLJSONToObjectMapper.h"

#import <YYModel/YYModel.h>


static NSString const *ClientAppIdParam = @"appid";
static NSString const *ClientAppUnitParam = @"units";

@implementation WLOpenWeatherMapClient

#pragma mark - WLNetworkClientProtocol

- (BOOL)getCurrentForecastForCity:(WLCityModel *)city
                       completion:(void (^)(WLWeatherCurrentForecast *forecast, NSError *err))completion;
{
    assert(city);

    NSDictionary *params;
    NSString *part;

    if (city.cityId) {
        part = @"weather";
        params = @{@"id" : city.cityId,
                   ClientAppIdParam : self.apiKey,
                   ClientAppUnitParam : @"metric"};
    }
    else if (city.latitude || city.longitude) {
        part = @"weather";
        params = @{@"lat" : [NSString stringWithFormat:@"%lf", city.latitude],
                   @"lon" : [NSString stringWithFormat:@"%lf", city.longitude],
                   ClientAppUnitParam : @"metric",
                   ClientAppIdParam : self.apiKey};
    }


    [[self GET:part parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"Success: %@", responseObject);
        WLWeatherCurrentForecast *forecast = [WLWeatherCurrentForecast yy_modelWithJSON:responseObject];
        if (completion) {
            completion(forecast, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Error: %@", error);
        if (completion)
            completion(nil, error);
    }] resume];

    return YES;
}

@end
