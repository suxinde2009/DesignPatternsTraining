//
//  CurrentConditionsDisplay.h
//  DesignPatternsPractices
//
//  Created by admin on 14-8-13.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "Observer.h"
#import "DisplayElement.h"

@interface CurrentConditionsDisplay : NSObject <Observer, DisplayElement>
{
    float temperature;
    float humidity;
    id<Subject> weatherData;
}

- (id)initWithSubject:(id<Subject>)_weatherData;

@end
