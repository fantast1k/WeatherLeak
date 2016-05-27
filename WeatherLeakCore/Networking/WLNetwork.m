//
//  WLNetwork.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLNetwork.h"
#import "WLNetworkClientFactory.h"


@implementation WLNetwork
{
    WLNetworkConfiguration *_config;
    id<WLNetworkClientProtocol> _client;
}

#pragma mark - Instantiation

- (instancetype)initWithConfiguration:(WLNetworkConfiguration *)config
{
    assert(config);
    if (self = [super init]) {
        _config = config;
        if (config.openWeatherApiKey) {
            _client = [WLNetworkClientFactory openWeatherMapClientWithKey:config.openWeatherApiKey];
        }
    }
    assert(_client);
    return self;
}

#pragma mark - WLNetworkClientProtocol

- (BOOL)getCurrentForecastForCity:(WLCityModel *)city completion:(void (^)(WLWeatherCurrentForecast *, NSError *))completion
{
    return [_client getCurrentForecastForCity:city completion:completion];
}

@end
