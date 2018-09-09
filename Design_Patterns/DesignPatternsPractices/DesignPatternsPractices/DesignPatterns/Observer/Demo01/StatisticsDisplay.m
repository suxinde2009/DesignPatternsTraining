//
//  StatisticsDisplay.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "StatisticsDisplay.h"

@implementation StatisticsDisplay

- (id)initWithWeatherData:(WeatherData *)wd
{
    if (self = [super init]) {
        maxTemp = 0.0f;
        minTemp = 200;
        tempSum = 0.0f;
        
        weatherData = wd;
        [weatherData registerObserver:self];

    }
    return self;
}

- (void)update:(float)temp humidity:(float)humidity pressure:(float)pressure
{
    tempSum += temp;
    numReadings++;
    
    if (temp > maxTemp) {
        maxTemp = temp;
    }
    
    if (temp < minTemp) {
        minTemp = temp;
    }
    
    [self display];
}


- (void)display
{
    NSLog(@"Avg/Max/Min temperature = %f / %f / %f",
          (tempSum / numReadings), maxTemp, minTemp);
}


@end
