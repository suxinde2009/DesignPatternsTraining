//
//  UIImage+Transform.m
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform
{
    CGContextRef context = [self beginContext];
    
    // setup transformation
    CGContextConcatCTM(context, transform);
    
    // Draw the original image to the context
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    
    [self endContext];
    
    return imageOut;
}


@end
