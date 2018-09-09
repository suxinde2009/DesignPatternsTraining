//
//  WeatherStationHeatIndex.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "WeatherStationHeatIndex.h"
#import "WeatherData.h"
#import "CurrentConditionsDisplay.h"
#import "ForecastDisplay.h"
#import "HeatIndexDisplay.h"
#import "StatisticsDisplay.h"

@implementation WeatherStationHeatIndex

+ (void)mainTest
{
    WeatherData *weatherData = [[WeatherData alloc] init];
    CurrentConditionsDisplay *currentDisplay = [[CurrentConditionsDisplay alloc] initWithSubject:(weatherData)];
    StatisticsDisplay *statisticsDisplay = [[StatisticsDisplay alloc] initWithWeatherData:(weatherData)];
    ForecastDisplay *forecastDisplay = [[ForecastDisplay alloc] initWithWeatherData:(weatherData)];
    HeatIndexDisplay *heatIndexDisplay = [[HeatIndexDisplay alloc] initWithWeatherData:(weatherData)];
    
//    weatherData.setMeasurements(80, 65, 30.4f);
//    weatherData.setMeasurements(82, 70, 29.2f);
//    weatherData.setMeasurements(78, 90, 29.2f);
    [weatherData setMeasurements:80 humidity:65 pressure:30.4f];
    [weatherData setMeasurements:82 humidity:70 pressure:29.2f];
    [weatherData setMeasurements:78 humidity:90 pressure:29.2f];
}

@end
