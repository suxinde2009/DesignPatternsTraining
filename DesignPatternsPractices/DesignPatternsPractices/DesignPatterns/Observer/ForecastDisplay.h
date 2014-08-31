//
//  ForecastDisplay.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Observer.h"
#import "DisplayElement.h"

@class WeatherData;

@interface ForecastDisplay : NSObject <Observer, DisplayElement>
{
    float currentPressure;// = 29.92f;
	float lastPressure;
	WeatherData *weatherData;
}

- (id)initWithWeatherData:(WeatherData *)wd;

@end
