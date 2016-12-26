//
//  WeatherData.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "WeatherData.h"

@implementation WeatherData

- (id)init
{
    if(self) {
        observers = [[NSMutableArray alloc] initWithCapacity:0];
    }
    
    return self;
}

- (void)removeObserver:(id<Observer>)observer
{
    if (observers.count == 0) {
        return;
    }
    
    [observers removeObject:observer];
}

- (void)registerObserver:(id<Observer>)observer
{
    [observers addObject:observer];
}


- (void)notifyObservers
{
    for (int i = 0; i < observers.count; i++) {
        id<Observer> o = observers[i];
        [o update:temperature humidity:humidity pressure:pressure];
    }
}

- (void)measurementsChanged
{
    [self notifyObservers];
}


- (void)setMeasurements:(float)_temperature humidity:(float)_humidity pressure:(float)_pressure
{
    temperature = _temperature;
    humidity = _humidity;
    pressure = _pressure;
    [self measurementsChanged];
}


- (float)getTemperature
{
    return temperature;
}

- (float)getHumidity
{
    return humidity;
}

- (float)getPressure
{
    return pressure;
}


@end
