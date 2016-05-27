//
//  WLInteractorFactory.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WLWeatherInteractor.h"


@interface WLInteractorFactory : NSObject

+ (WLWeatherInteractor *)weatherInteractor;

@end
