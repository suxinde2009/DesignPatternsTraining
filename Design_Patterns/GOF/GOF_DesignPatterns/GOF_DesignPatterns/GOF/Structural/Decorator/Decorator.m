//
//  Decorator.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Decorator.h"

#pragma mark ChristmasTree

//Concrete Component
@implementation ChristmasTree
- (NSString*) show
{
    return [NSString stringWithFormat:@"I'm a %@", self.class];
}
@end

#pragma mark Christmas Tree Decorators

//Decorator
@implementation PrettyDecorator
@synthesize component;
- (id) initWithComponent:(NSObject<ChristmasDecoration>*)decoration
{
    if ([super init] != nil)
    {
        self.component = decoration;
    }
    return self;
}
- (NSString*) show
{
    return [component show];
}
- (void) dealloc
{
    component = nil;
}
@end

//Concrete Decorator
@implementation ChristmasTreeDecorations
- (NSString*) show
{
    NSString* parentDescription = [component show];
    return [NSString stringWithFormat:@"%@ with %@", parentDescription, self.class];
}
@end

//Concrete Decorator
@implementation ChristmasTreeLights
- (NSString*) show
{
    NSString* parentDescription = [component show];
    return [NSString stringWithFormat:@"%@ and beautiful %@", parentDescription, self.class];
}
@end

#pragma mark Helpful function

NSObject<ChristmasDecoration>* createChristmasTree()
{
    return [[ChristmasTreeLights alloc] initWithComponent:
            [[ChristmasTreeDecorations alloc] initWithComponent:
             [ChristmasTree new] ]];
}

#pragma mark [Application Interface]

//Application Interface
@implementation Decorator
- (id)init
{
    NSLog(@"Decorator Created");
    
    NSObject<ChristmasDecoration>* christmasTree = createChristmasTree();
    NSLog(@"%@", [christmasTree show]);
    
    NSLog(@"\n");
    return self;
}
@end
