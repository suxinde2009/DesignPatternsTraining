//
//  HeatIndexDisplay.m
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "HeatIndexDisplay.h"

@implementation HeatIndexDisplay

- (id)initWithWeatherData:(WeatherData *)wd
{
    if (self = [super init]) {
        weatherData = wd;
        heatIndex = 0.0f;
        [weatherData registerObserver:self];
    }
    return self;
}

- (float)computeHeatIndex:(float)t rh:(float)rh
{
    float index = (float)((16.923 + (0.185212 * t) + (5.37941 * rh) - (0.100254 * t * rh)
                           + (0.00941695 * (t * t)) + (0.00728898 * (rh * rh))
                           + (0.000345372 * (t * t * rh)) - (0.000814971 * (t * rh * rh)) +
                           (0.0000102102 * (t * t * rh * rh)) - (0.000038646 * (t * t * t)) + (0.0000291583 *
                                                                                               (rh * rh * rh)) + (0.00000142721 * (t * t * t * rh)) +
                           (0.000000197483 * (t * rh * rh * rh)) - (0.0000000218429 * (t * t * t * rh * rh)) +
                           0.000000000843296 * (t * t * rh * rh * rh)) -
                          (0.0000000000481975 * (t * t * t * rh * rh * rh)));
    return index;
}


- (void)update:(float)temp humidity:(float)humidity pressure:(float)pressure
{
    heatIndex = [self computeHeatIndex:temp rh:humidity];
    [self display];
}


- (void)display
{
    NSLog(@"Heat index is %f", heatIndex);
}



@end
