//
//  UIImage+BaseFilter.h
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)

- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentImageContext;
- (void)endContext;

@end
