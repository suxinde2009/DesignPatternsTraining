//
//  WeatherData.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface WeatherData : NSObject <Subject>
{
    NSMutableArray *observers;
    
    float temperature;
	float humidity;
	float pressure;
}


- (void)measurementsChanged;
- (void)setMeasurements:(float)_temperature
               humidity:(float)_humidity
               pressure:(float)_pressure;

- (float)getTemperature;
- (float)getHumidity;
- (float)getPressure;

@end
