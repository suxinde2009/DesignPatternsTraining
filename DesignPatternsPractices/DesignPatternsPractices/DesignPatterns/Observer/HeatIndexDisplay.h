//
//  HeatIndexDisplay.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WeatherData.h"
#import "Observer.h"
#import "DisplayElement.h"

@interface HeatIndexDisplay : NSObject <Observer, DisplayElement>
{
    float heatIndex;// = 0.0f;
	WeatherData *weatherData;
}

- (id)initWithWeatherData:(WeatherData *)wd;

@end
