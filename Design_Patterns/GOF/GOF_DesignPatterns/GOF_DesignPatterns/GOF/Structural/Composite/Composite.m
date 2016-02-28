//
//  Composite.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Composite.h"

#pragma mark Design Parts

//Leaf
@implementation Dimentions
@synthesize description;
- (id)   initWithDescription:(NSString *)desc
{
    if ([super init] != nil)
    {
        self.description = desc;
    }
    return self;
}
- (void) present
{
    NSLog(@" - %@ : %@", self.class, [self description]);
}
- (void) add:(NSObject<Designable>*)design
{}
- (NSObject<Designable>*) getDesign:(NSUInteger)index
{
    return nil;
}
- (void) dealloc
{
    description = nil;
}
@end

//Leaf
@implementation Materials
@synthesize description;
- (id)   initWithDescription:(NSString *)desc
{
    if ([super init] != nil)
    {
        self.description = desc;
    }
    return self;
}
- (void) present
{
    NSLog(@" - %@  : %@", self.class, self.description);
}
- (void) add:(NSObject<Designable>*)design
{}
- (NSObject<Designable>*) getDesign:(NSUInteger)index
{ return nil; }
- (void) dealloc
{
    description = nil;
}
@end

//Composite
@implementation LevelDesign
@synthesize description;
- (id) initWithDescription:(NSString*)desc
{
    if ([self init] != nil)
    {
        self.description = desc;
        designs = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void) present
{
    NSLog(@"Presenting design for %@:", self.description);
    NSEnumerator* e = [designs objectEnumerator];
    NSObject<Designable>* object;
    while (object = (NSObject<Designable>*)[e nextObject])
    {
        [object present];
    }
}
- (void) add:(NSObject<Designable>*)design
{
    [designs addObject:(id)design];
}
- (NSObject<Designable>*) getDesign:(NSUInteger)index
{
    return (NSObject<Designable>*)[designs objectAtIndex:index];
}
- (void) dealloc
{
    designs = nil;
}
@end

#pragma mark Design Creation

//Design Creation
NSObject<Designable>* makeHouseDesign()
{
    LevelDesign* house = [[LevelDesign alloc] initWithDescription:@"My House"];
    [house add:[[Dimentions alloc] initWithDescription:@"pretty large"]];
    [house add:[[Materials alloc] initWithDescription:@"extra strong"]];
    [house add:[[LevelDesign alloc] initWithDescription:@"First Floor"]];
    [[house getDesign:2] add:[[Dimentions alloc] initWithDescription:@"high enough"]];
    [[house getDesign:2] add:[[Materials alloc] initWithDescription:@"exclusive"]];
    [house add:[[LevelDesign alloc] initWithDescription:@"Roof"] ];
    [[house getDesign:3] add:[[Materials alloc] initWithDescription:@"glass"]];
    return house;
}


#pragma mark Composite [Application Interface]

//Application Interface
@implementation Composite
- (id)init
{
    NSLog(@"Composite Created");
    
    NSObject<Designable>* houseProject = makeHouseDesign();
    [houseProject present];
    
    NSLog(@"\n");
    return self;
}

@end
