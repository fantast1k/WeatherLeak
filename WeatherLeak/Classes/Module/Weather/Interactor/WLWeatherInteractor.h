//
//  WLWeatherInteractor.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLInteractor.h"
#import "WLWeatherPresenterIO.h"

#import <WeatherLeakCore/WeatherLeakCore.h>


@interface WLWeatherInteractor : WLInteractor<WLWeatherPresenterInput>

@property (nonatomic, strong) WLNetwork *network;

- (instancetype)initWithCity:(WLCityModel *)city;

@end


@interface WLWeatherInteractor (Deprecated)
- (instancetype)init NS_UNAVAILABLE;
@end
