//
//  WLCitiesListVC.m
//  WeatherLeak
//
//  Created by Dmitry Fa[n]tastik on 26/05/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "WLCitiesListVC.h"

#import <Masonry/Masonry.h>


@interface WLCitiesListVC ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation WLCitiesListVC

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [self setup];
    [super viewDidLoad];
}

#pragma mark - Setup

- (void)setup
{
    [self setupTableView];
}

- (void)setupTableView
{
    UITableView *tv = [[UITableView alloc] init];
    tv.translatesAutoresizingMaskIntoConstraints = NO;

    [self.view addSubview:tv];

    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    self.tableView = tv;
}


@end
