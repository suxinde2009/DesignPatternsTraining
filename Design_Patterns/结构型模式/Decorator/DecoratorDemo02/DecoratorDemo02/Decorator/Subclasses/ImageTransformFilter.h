//
//  ImageTransformFilter.h
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter 
{
@private
    CGAffineTransform mTransform;
}
@property (nonatomic, assign) CGAffineTransform transform;

- (id)initWithImageComponent:(id<ImageComponent>)component
                   transform:(CGAffineTransform)transform;

- (void)apply;

@end
