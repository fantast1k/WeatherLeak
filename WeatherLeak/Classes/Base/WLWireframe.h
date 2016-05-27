//
//  WLWireframe.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <UIKit/UIKit.h>


@class WLPresenter;

@interface WLWireframe : NSObject

@property (nonatomic, readonly, strong) UIViewController *viewController;
@property (nonatomic, readonly, strong) WLPresenter *presenter;

@end
