//
//  ChainOfResponsibility_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-4.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "ChainOfResponsibility_Template_TestCase.h"

#import "Handler.h"
#import "ConcreteHandler1.h"
#import "ConcreteHandler2.h"
#import "ConcreteHandler3.h"


@implementation ChainOfResponsibility_Template_TestCase

+ (void)mainTest
{
    // Setup Chain of Responsibility
    Handler *h1 = [[ConcreteHandler1 alloc] init];
    Handler *h2 = [[ConcreteHandler2 alloc] init];
    Handler *h3 = [[ConcreteHandler3 alloc] init];
    
    [h1 setSuccessor:h2];
    [h2 setSuccessor:h3];
    
    int requests[8] = { 2, 5, 14, 22, 18, 3, 27, 20 };
    
    for (int i = 0; i < 8; i++) {
        [h1 handleRequest:requests[i]];
    }
    
}

@end
