//
//  WLWeatherVC.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 27/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLWeatherVC.h"
#import "UIImage+WLBundledImage.h"

#import <Masonry/Masonry.h>


@interface WLWeatherVC ()

@property (nonnull, strong) UIImageView *backgroundImageView;

@end

@implementation WLWeatherVC

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [self setup];
    [super viewDidLoad];
}

#pragma mark - Setup

- (void)setup
{
    [self setupImageViewBackground];
}

- (void)setupImageViewBackground
{
    UIImage *img = [UIImage wl_bundledImageNamed:@"Cloud.png"];
    UIImageView *iv = [[UIImageView alloc] initWithImage:img];
    iv.translatesAutoresizingMaskIntoConstraints = NO;

    [self.view addSubview:iv];

    [iv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    self.backgroundImageView = iv;
}

@end
