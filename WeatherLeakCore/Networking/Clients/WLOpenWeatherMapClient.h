//
//  WLOpenWeatherMapClient.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "WLNetworkClientProtocol.h"


@interface WLOpenWeatherMapClient : AFHTTPSessionManager <WLNetworkClientProtocol>

@property (nonatomic, strong) NSString *apiKey;

@end
