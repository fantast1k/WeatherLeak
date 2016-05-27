//
//  WLBootstrap.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLBootstrap.h"

@implementation WLBootstrap
{
    WLNetwork *_net;
    WLNetworkConfiguration *_netConfig;
}

+ (instancetype)instance
{
    static WLBootstrap *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[WLBootstrap alloc] init];
    });
    return instance;
}

#pragma mark - Public methods

- (WLNetwork *)network
{
    if (_net == nil) {
        _net = [[WLNetwork alloc] initWithConfiguration:[self networkConfiguration]];
    }
    return _net;
}

#pragma mark - Private methods

- (WLNetworkConfiguration *)networkConfiguration
{
    if (_netConfig == nil) {
        NSString *configPath = [[NSBundle mainBundle] pathForResource:@"NetworkConfiguration" ofType:@"plist"];
        NSDictionary *params = [NSDictionary dictionaryWithContentsOfFile:configPath];
        _netConfig = [[WLNetworkConfiguration alloc] init];
        [_netConfig setOpenWeatherApiKey:params[@"OPEN_WEATHER_MAP_API_KEY"]];
    }
    return _netConfig;
}

@end
