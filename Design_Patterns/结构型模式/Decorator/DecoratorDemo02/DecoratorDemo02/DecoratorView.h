//
//  DecoratorView.h
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DecoratorView : UIView
{
@private
    UIImage *mImage;
}

@property (nonatomic, retain) UIImage *image;

@end
