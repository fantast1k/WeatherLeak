//
//  WLNetwork.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WLNetworkConfiguration.h"
#import "WLNetworkClientProtocol.h"


@interface WLNetwork : NSObject<WLNetworkClientProtocol>

- (instancetype)initWithConfiguration:(WLNetworkConfiguration *)config;

@end


@interface WLNetwork (Deprecated)
- (instancetype)init NS_UNAVAILABLE;
@end
