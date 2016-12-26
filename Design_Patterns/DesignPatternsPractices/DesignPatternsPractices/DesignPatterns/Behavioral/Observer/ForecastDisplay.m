//
//  ForecastDisplay.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ForecastDisplay.h"
#import "WeatherData.h"

@implementation ForecastDisplay

- (id)initWithWeatherData:(WeatherData *)wd
{
    if (self = [super init]) {
        weatherData = wd;
        currentPressure = 29.92f;
        [weatherData registerObserver:self];
    }
    return self;
}

- (void)update:(float)temp humidity:(float)humidity pressure:(float)pressure
{
    lastPressure = currentPressure;
    currentPressure = pressure;
    [self display];
}

- (void)display
{
    NSLog(@"Forecast: ");
    if (currentPressure > lastPressure) {
        NSLog(@"Improving weather on the way!");
    }else if (currentPressure == lastPressure) {
        NSLog(@"More of the same");
    }else {
        NSLog(@"Watch out for cooler, rainy weather");
    }
}

@end
