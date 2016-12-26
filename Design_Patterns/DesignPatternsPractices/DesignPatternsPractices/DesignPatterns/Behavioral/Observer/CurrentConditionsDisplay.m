//
//  CurrentConditionsDisplay.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@implementation CurrentConditionsDisplay

- (id)initWithSubject:(id<Subject>)_weatherData
{
    if (self = [super init]) {
        weatherData = _weatherData;
        [weatherData registerObserver:self];
    }
    return self;
}

- (void)update:(float)temp humidity:(float)_humidity pressure:(float)pressure
{
    temperature = temp;
    humidity = _humidity;
    [self display];
}

- (void)display
{
    NSLog(@"Current conditions: %f F degrees and %f%% humidity", temperature, humidity);
}

@end
