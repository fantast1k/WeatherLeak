//
//  WLWeatherPresenter.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLPresenter.h"
#import "WLWeatherPresenterIO.h"

#import <WeatherLeakView/WeatherLeakView.h>


@interface WLWeatherPresenter : WLPresenter<WLWeatherInput, WLWeatherPresenterOutput>

@end
