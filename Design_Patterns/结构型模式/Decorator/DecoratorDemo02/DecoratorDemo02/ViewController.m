//
//  ViewController.m
//  DecoratorDemo02
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ViewController.h"

// Subclasses approach
#import "ImageShadowFilter.h"
#import "ImageTransformFilter.h"
#import "UIImage+ImageComponent.h"
#import "DecoratorView.h"

// Category Approach
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self subclassApproach];
    //[self categoryApproach];

}

- (void)subclassApproach
{
    // load the original image
    UIImage *image = [UIImage imageNamed:@"Image.png"];
    
    // create a transformation
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0,
                                                                            image.size.height / 8.0);
    
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform,
                                                               translateTransform);
    
    
    // a true subclass approach
    id<ImageComponent> transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:(image)
                                                                                     transform:finalTransform];
    
    
    id<ImageComponent> finalImage = [[ImageShadowFilter alloc] initWithImageComponent:transformedImage];
    
    
    // create a new image view
    // with a filtered image
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:[self.view bounds]];
    [decoratorView setImage:finalImage];
    
    [self.view addSubview:decoratorView];
    
    
}

- (void)categoryApproach
{
    // load the original image
    UIImage *image = [UIImage imageNamed:@"Image.png"];
    
    // create a transformation
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0,
                                                                            image.size.height / 8.0);
    
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform,
                                                               translateTransform);
    // a category approach
    // add transformation
    UIImage *transformedImage = [image imageWithTransform:finalTransform];
    
    // add shadow
    id <ImageComponent> finalImage = [transformedImage imageWithDropShadow];
    
    // category approach in one line
    //id <ImageComponent> finalImage = [[image imageWithTransform:finalTransform] imageWithDropShadow];
    
    
    // create a new image view
    // with a filtered image
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:[self.view bounds]];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
}

@end
