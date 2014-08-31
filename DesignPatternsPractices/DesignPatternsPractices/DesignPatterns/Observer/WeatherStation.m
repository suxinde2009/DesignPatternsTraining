//
//  WeatherStation.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "WeatherStation.h"
#import "WeatherData.h"
#import "StatisticsDisplay.h"
#import "ForecastDisplay.h"
#import "CurrentConditionsDisplay.h"


@implementation WeatherStation

+ (void)mainTest
{
    WeatherData *wd = [[WeatherData alloc] init];
    
    CurrentConditionsDisplay *cd = [[CurrentConditionsDisplay alloc] initWithSubject:wd];
    StatisticsDisplay *sd = [[StatisticsDisplay alloc] initWithWeatherData:wd];
    ForecastDisplay *fd = [[ForecastDisplay alloc] initWithWeatherData:wd];
    
    [wd setMeasurements:80 humidity:65 pressure:30.4f];
    [wd setMeasurements:82 humidity:70 pressure:29.2f];
    [wd setMeasurements:78 humidity:90 pressure:29.2f];
    
    [cd release], cd = nil;
    [sd release], sd = nil;
    [fd release], fd = nil;
    
}

@end
