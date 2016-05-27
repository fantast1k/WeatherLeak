//
//  WLNetwork.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLNetwork.h"


@implementation WLNetwork
{
    WLNetworkConfiguration *_config;
}

#pragma mark - Instantiation

- (instancetype)initWithConfiguration:(WLNetworkConfiguration *)config
{
    assert(config);
    if (self = [super init]) {
        _config = config;
    }
    return self;
}

@end
