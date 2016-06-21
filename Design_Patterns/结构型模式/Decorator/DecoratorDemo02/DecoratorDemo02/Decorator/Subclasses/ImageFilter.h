//
//  ImageFilter.h
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage+ImageComponent.h"

@interface ImageFilter : NSObject <ImageComponent> {
@private
    id<ImageComponent> mComponent;
}

@property (nonatomic, retain) id<ImageComponent> component;

- (void)apply;

- (instancetype)initWithImageComponent:(id<ImageComponent>)component;

- (id)forwardingTargetForSelector:(SEL)aSelector;

/*
 // overridden methods in UIImage APIs
 - (void) drawAsPatternInRect:(CGRect)rect;
 - (void) drawAtPoint:(CGPoint)point;
 - (void) drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 - (void) drawInRect:(CGRect)rect;
 - (void) drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
 */

@end
