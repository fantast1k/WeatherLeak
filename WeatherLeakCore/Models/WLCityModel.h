//
//  WLCityModel.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WLCityModel : NSObject

@property (nonatomic, assign, readonly) double latitude;
@property (nonatomic, assign, readonly) double longitude;

@property (nonatomic, strong, readonly) NSString *cityName;

- (instancetype)initWithLat:(double)lat lon:(double)lon;

@end


@interface WLCityModel (Deprecated)
- (instancetype)init NS_UNAVAILABLE;
@end
