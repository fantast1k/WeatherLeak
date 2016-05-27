//
//  WLWeatherInteractor.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLWeatherInteractor.h"


@implementation WLWeatherInteractor
{
    WLCityModel *_city;
}

#pragma mark - Instantiation

- (instancetype)initWithCity:(WLCityModel *)city
{
    assert(city);
    if (self = [super init]) {
        _city = city;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self getWeatherData];
        });
    }
    return self;
}

#pragma mark - Overrides

- (id<WLWeatherPresenterOutput>)output
{
    return (id<WLWeatherPresenterOutput>)self.presenter;
}

#pragma mark - WLWeatherPresenterInput

- (void)getWeatherData
{
    [self.network getCurrentForecastForCity:_city
                                 completion:^(WLWeatherCurrentForecast *forecast, NSError *err) {
        if (!err) {
            [[self output] showCurrentForecast:forecast];
        }
    }];
}

#pragma mark - Handle methods

@end
