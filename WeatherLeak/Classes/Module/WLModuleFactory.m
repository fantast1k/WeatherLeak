//
//  WLModuleFactory.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLModuleFactory.h"
#import "WLWireframeProtected.h"
#import "WLPresenterProtected.h"
#import "WLInteractorProtected.h"
// Presenters
#import "WLWeatherPresenter.h"
// Interactors
#import "WLWeatherInteractor.h"

#import <WeatherLeakView/WeatherLeakView.h>


@implementation WLModuleFactory

+ (WLWeatherWireframe *)weatherWireframe
{
    WLWeatherInteractor *interactor = [[WLWeatherInteractor alloc] initWithCity:[NSObject new]];
    WLWeatherPresenter *presenter = [[WLWeatherPresenter alloc] init];
    WLWeatherWireframe *wireframe = [[WLWeatherWireframe alloc] init];

    UIViewController<WLWeatherOutput> *viewController = [WLViewControllerFactory weatherViewControllerWithInput:presenter];

    presenter.wireframe = wireframe;
    presenter.interactor = interactor;

    wireframe.viewController = viewController;
    wireframe.presenter = presenter;

    interactor.presenter = presenter;

    return wireframe;
}

@end
