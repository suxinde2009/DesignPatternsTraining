//
//  ImageTransformFilter.m
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter

@synthesize transform=mTransform;

- (instancetype)initWithImageComponent:(id<ImageComponent>)component
                             transform:(CGAffineTransform)transform
{
    if (self = [super initWithImageComponent:component]) {
        [self setTransform: transform];
    }
    return self;
}

- (void)apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // setup transformation
    CGContextConcatCTM(context, mTransform);

}

@end
