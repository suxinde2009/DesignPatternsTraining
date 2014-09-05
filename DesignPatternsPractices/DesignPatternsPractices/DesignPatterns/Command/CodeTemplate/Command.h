//
//  Command.h
//  DesignPatternsPractices
//
//  Created by su xinde on 14-9-6.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Receiver.h"

@interface Command : NSObject
{
@package
    Receiver *mReceiver;
}

- (id)initWithReceiver:(Receiver *)receiver;
- (void)execute;

@end
