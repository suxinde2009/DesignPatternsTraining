//
//  Decorator.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark ChristmasTree

//Component
@protocol ChristmasDecoration
- (NSString*) show;
@end

//Concrete Component
@interface ChristmasTree : NSObject <ChristmasDecoration>
@end

#pragma mark Christmas Tree Decorators

//Decorator
@interface PrettyDecorator : NSObject <ChristmasDecoration>
{
    NSObject<ChristmasDecoration>* component;
}
@property (nonatomic, retain) NSObject<ChristmasDecoration>* component;
- (id) initWithComponent:(NSObject<ChristmasDecoration>*)decoration;
@end

//Concrete Decorator
@interface ChristmasTreeDecorations : PrettyDecorator
@end

//Concrete Decorator
@interface ChristmasTreeLights : PrettyDecorator
@end

#pragma mark [Application Interface]

//Application Interface
@interface Decorator : NSObject
@end
