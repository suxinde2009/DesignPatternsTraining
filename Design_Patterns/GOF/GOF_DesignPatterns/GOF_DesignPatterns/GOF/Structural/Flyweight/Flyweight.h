//
//  Flyweight.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark Basic Unit

//Basic Unit
@interface BasicUnit : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) int health;
@property (nonatomic, strong) UIImage *image;
@end

#pragma mark FlyweightImageFactory

//FlyweightImageFactory
@interface FlyweightImageFactory : NSObject
+(UIImage *) getImage:(NSString *)imageName;
@end

#pragma mark Concrete Units

//Dragon
@interface Dragon : BasicUnit
@end

//Goblin
@interface Goblin : BasicUnit
@end

#pragma mark [Application Interface]

//Application Interface
@interface Flyweight : NSObject
@end
