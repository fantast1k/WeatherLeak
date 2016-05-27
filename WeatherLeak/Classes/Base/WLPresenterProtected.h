//
//  WLPresenterProtected.h
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLPresenter.h"
#import "WLWireframe.h"
#import "WLInteractor.h"

@interface WLPresenter ()

@property (nonatomic, weak) WLWireframe *wireframe;
@property (nonatomic, strong) WLInteractor *interactor;

@end
