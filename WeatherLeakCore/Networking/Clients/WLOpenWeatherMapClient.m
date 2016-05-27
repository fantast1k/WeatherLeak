//
//  WLOpenWeatherMapClient.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLOpenWeatherMapClient.h"
#import "WLCityModelProtected.h"


static NSString const *ClientAppIdParam = @"APPID";

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
        params = @{@"id" : city.cityId, ClientAppIdParam : self.apiKey};
    }
    else if (city.latitude || city.longitude) {
        part = @"weather";
        params = @{@"lat" : @(city.latitude), @"lon" : @(city.longitude), ClientAppIdParam : self.apiKey};
    }


    [[self GET:part parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"Success: %@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Error: %@", error);
    }] resume];

    return YES;
}

@end
