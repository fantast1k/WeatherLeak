//
//  WLInteractorFactory.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLInteractorFactory.h"
#import "WLBootstrap.h"


@implementation WLInteractorFactory

+ (WLWeatherInteractor *)weatherInteractor
{
    WLCityModel *city = [[WLCityModel alloc] initWithLat:50.4546600 lon:30.5238000];
    WLWeatherInteractor *interactor = [[WLWeatherInteractor alloc] initWithCity:city];
    interactor.network = [WLBootstrap instance].network;

    return interactor;
}

@end
