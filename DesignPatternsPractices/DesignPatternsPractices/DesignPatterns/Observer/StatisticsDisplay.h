//
//  StatisticsDisplay.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"
#import "WeatherData.h"

@interface StatisticsDisplay : NSObject <Observer, DisplayElement>
{
    float maxTemp;// = 0.0f;
	float minTemp;// = 200;
	float tempSum;// = 0.0f;
	int numReadings;
	WeatherData *weatherData;
}

- (id)initWithWeatherData:(WeatherData *)wd;

@end
