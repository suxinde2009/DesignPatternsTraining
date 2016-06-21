//
//  ImageFilter.m
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

@synthesize component = mComponent;

- (id)initWithImageComponent:(id<ImageComponent>)component
{
    if (self = [super init]) {
        [self setComponent:component];
    }
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return mComponent;
}

- (void)apply
{
    // should be overridden by subclasses
    // to apply real filters
}

/*
- (void)drawAsPatternInRect:(CGRect)rect
{
    [self apply];
    [mComponent drawAsPatternInRect:rect];
}

- (void)drawAtPoint:(CGPoint)point
{
    [self apply];
    [mComponent drawAtPoint:point];
}

- (void)drawAtPoint:(CGPoint)point
          blendMode:(CGBlendMode)blendMode
              alpha:(CGFloat)alpha
{
    [self apply];
    [mComponent drawAtPoint:point
                  blendMode:blendMode
                      alpha:alpha];
}

- (void)drawInRect:(CGRect)rect
{
    [self apply];
    [mComponent drawInRect:rect];
}

- (void)drawInRect:(CGRect)rect
         blendMode:(CGBlendMode)blendMode
             alpha:(CGFloat)alpha
{
    [self apply];
    [mComponent drawInRect:rect
                 blendMode:blendMode
                     alpha:alpha];
}
*/


@end
