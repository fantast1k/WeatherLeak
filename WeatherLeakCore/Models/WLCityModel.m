//
//  WLCityModel.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLCityModel.h"
#import "WLCityModelProtected.h"

@implementation WLCityModel

- (instancetype)initWithLat:(double)lat lon:(double)lon
{
    if (self = [super init]) {
        _latitude = lat;
        _longitude = lon;
    }
    return self;
}

@end
