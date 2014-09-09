//
//  Observer_ConcreteObserver.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-10.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Observer_Observer.h"
#import "Observer_ConcreteSubject.h"

@interface Observer_ConcreteObserver : Observer_Observer
{
@private
    NSString *mName;
    NSString *mObserverState;
    Observer_ConcreteSubject *mSubject;
}

- (id)initWithSubject:(Observer_ConcreteSubject *)subject
                 name:(NSString *)name;


@end
