//
//  WLNetworkClientFactory.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLNetworkClientFactory.h"

#import "WLOpenWeatherMapClient.h"


@implementation WLNetworkClientFactory

+ (id<WLNetworkClientProtocol>)openWeatherMapClientWithKey:(NSString *)key
{
    assert(key.length);

    NSURL *url = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/"];
    WLOpenWeatherMapClient *client = [[WLOpenWeatherMapClient alloc] initWithBaseURL:url];

    [client setApiKey:key];

    return client;
}

@end
