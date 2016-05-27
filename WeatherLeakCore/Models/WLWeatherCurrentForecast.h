//
//  WLWeatherCurrentForecast.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WLWeatherCurrentForecast : NSObject

@property (nonatomic, strong, readonly) NSDate *dateTime;
@property (nonatomic, strong, readonly) NSString *weatherMain;
@property (nonatomic, strong, readonly) NSString *weatherDescription;

@property (nonatomic, assign, readonly) NSUInteger clouds;
@property (nonatomic, assign, readonly) NSUInteger humidity;
@property (nonatomic, assign, readonly) NSUInteger pressure;
@property (nonatomic, assign, readonly) NSUInteger temp;
@property (nonatomic, assign, readonly) NSUInteger tempMax;
@property (nonatomic, assign, readonly) NSUInteger tempMin;
@property (nonatomic, assign, readonly) NSUInteger visibility;
@property (nonatomic, assign, readonly) NSUInteger windDegree;
@property (nonatomic, assign, readonly) NSUInteger windSpeed;

@end
