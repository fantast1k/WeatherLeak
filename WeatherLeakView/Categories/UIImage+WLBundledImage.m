//
//  UIImage+WLBundledImage.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "UIImage+WLBundledImage.h"
#import "WLViewFrameworkLoader.h"


@implementation UIImage (WLBundledImage)

+ (instancetype)wl_bundledImageNamed:(NSString *)name
{
    NSBundle *bundle = [NSBundle bundleForClass:[WLViewFrameworkLoader class]];
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
}

@end
