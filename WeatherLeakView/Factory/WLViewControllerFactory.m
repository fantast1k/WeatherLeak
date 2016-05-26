//
//  WLViewControllerFactory.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 26/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLViewControllerFactory.h"

#import "WLCitiesListVC.h"

@implementation WLViewControllerFactory

+ (UIViewController<WLCitiesListOutput> *)citiesViewControllerWithInput:(id<WLCitiesListInput>)input
{
    assert(input);

    WLCitiesListVC *vc = [[WLCitiesListVC alloc] init];
    vc.input = input;
    return vc;
}

@end
