//
//  Observer.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Observer.h"

#pragma mark Standard Observer

//Standard Subject Implementation
@implementation StandardSubjectImplementation
-(NSMutableSet *) observerCollection
{
    if (_observerCollection == nil)
        _observerCollection = [NSMutableSet new];
    
    return _observerCollection;
}
-(void) addObserver:(id<StandardObserver>)observer
{
    [self.observerCollection addObject:observer];
}
-(void) removeObserver:(id<StandardObserver>)observer
{
    [self.observerCollection removeObject:observer];
}
-(void) notifyObjects
{
    for (id<StandardObserver> observer in self.observerCollection) {
        [observer valueChanged: _valueName newValue:_newValue];
    }
}
-(void)changeValue:(NSString *)valueName andValue:(NSString *) newValue
{
    _newValue = newValue;
    _valueName = valueName;
    [self notifyObjects];
}
@end

//Some Subscriber
@implementation SomeSubscriber
-(void) valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"And some subscriber tells: Hmm, value %@ changed to %@", valueName, newValue);
}
@end

//Other Subscriber
@implementation OtherSubscriber
-(void) valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"And some another subscriber tells: Hmm, value %@ changed to %@", valueName, newValue);
}
@end

#pragma mark KVO

//KVO Subject
@implementation KVOSubject
@end

//KVO Observer
@implementation KVOObserver
-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"KVO: Value changed;");
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation Observer
- (id)init
{
    NSLog(@"Observer Created");
    
    NSLog(@"///////Standard///////");
    StandardSubjectImplementation *subj = [StandardSubjectImplementation new];
    SomeSubscriber *someSubscriber = [SomeSubscriber new];
    OtherSubscriber *otherSubscriber = [OtherSubscriber new];
    [subj addObserver:someSubscriber];
    [subj addObserver: otherSubscriber];
    [subj changeValue:@"strange value" andValue:@"newValue"];
    
    
    NSLog(@"///////KVO////////////");
    KVOSubject *kvoSubj = [KVOSubject new];
    KVOObserver *kvoObserver = [KVOObserver new];
    [kvoSubj addObserver:kvoObserver forKeyPath:@"changeableProperty"
                 options:NSKeyValueObservingOptionNew context:nil];
    
    NSLog(@"Changeble property is %@", kvoSubj.changeableProperty);
    kvoSubj.changeableProperty = @"new value";
    NSLog(@"Changeble property is %@", kvoSubj.changeableProperty);
    [kvoSubj setValue:@"new value 2" forKey:@"changeableProperty"];
    NSLog(@"Changeble property is %@", kvoSubj.changeableProperty);
    [kvoSubj removeObserver:kvoObserver forKeyPath:@"changeableProperty"];
    
    NSLog(@"\n");
    return self;
}
@end