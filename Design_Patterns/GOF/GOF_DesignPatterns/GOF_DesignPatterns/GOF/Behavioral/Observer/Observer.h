//
//  Observer.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Standard Observer

//Standard Observer
@protocol StandardObserver <NSObject>
-(void) valueChanged:(NSString *)valueName newValue:(NSString *) newValue;
@end

//Standard Subject
@protocol StandardSubject <NSObject>
-(void) addObserver:(id<StandardObserver>) observer;
-(void) removeObserver:(id<StandardObserver>) observer;
-(void) notifyObjects;
@end

//Standard Subject Implementation
@interface StandardSubjectImplementation : NSObject <StandardSubject>
{
@private NSString *_valueName;
@private NSString *_newValue;
}
@property (nonatomic, strong) NSMutableSet *observerCollection;
-(void)changeValue:(NSString *)valueName andValue:(NSString *) newValue;
@end

//Some Subscriber
@interface SomeSubscriber : NSObject <StandardObserver>
@end

//Other Subscrber
@interface OtherSubscriber : NSObject <StandardObserver>
@end

#pragma mark KVO

//KVO Subject
@interface KVOSubject : NSObject
@property (nonatomic, strong) NSString *changeableProperty;
@end

//KVO Observer
@interface KVOObserver : NSObject
@end

#pragma mark [Application Interface]

//Application Interface
@interface Observer : NSObject
@end