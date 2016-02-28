//
//  Composite.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>
#pragma mark Design Parts

//Component
@protocol Designable
- (void) present;
- (void) add:(NSObject<Designable>*)design;
- (NSObject<Designable>*) getDesign:(NSUInteger)index;
@end

//Leaf
@interface Dimentions : NSObject <Designable>
{
    NSString* description;
}
@property (nonatomic, retain) NSString* description;
- (id) initWithDescription:(NSString*)desc;
@end

//Leaf
@interface Materials : NSObject <Designable>
{
    NSString* description;
}
@property (nonatomic, retain) NSString* description;
- (id) initWithDescription:(NSString*)desc;
@end

//Composite
@interface LevelDesign : NSObject <Designable>
{
    NSString*       description;
    NSMutableArray* designs;
}
@property (nonatomic, retain) NSString* description;
- (id) initWithDescription:(NSString*)desc;
@end

#pragma mark Composite [Application Interface]

//Application Interface
@interface Composite : NSObject
@end
