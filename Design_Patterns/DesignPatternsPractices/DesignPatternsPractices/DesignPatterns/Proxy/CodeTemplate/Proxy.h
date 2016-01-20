//
//  Proxy.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-7.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Proxy_Subject.h"
#import "Proxy_RealSubject.h"

@interface Proxy : Proxy_Subject
{
@private
    Proxy_RealSubject *mRealSubject;
}

@end
