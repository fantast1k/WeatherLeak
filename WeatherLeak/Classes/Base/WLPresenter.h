//
//  WLPresenter.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>


@class WLWireframe;
@class WLInteractor;


@interface WLPresenter : NSObject

@property (nonatomic, strong, readonly) WLWireframe *wireframe;
@property (nonatomic, strong, readonly) WLInteractor *interactor;

@end
