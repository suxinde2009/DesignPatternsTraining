//
//  Observer_ConcreteSubject.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observer_Subject.h"

@interface Observer_ConcreteSubject : Observer_Subject

@property (nonatomic, retain) NSString *subjectState;

@end
