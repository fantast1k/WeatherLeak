//
//  WLWeatherVC.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WLWeatherIO.h"

@interface WLWeatherVC : UIViewController<WLWeatherOutput>

@property (nonatomic, weak) id<WLWeatherInput> input;

@end
