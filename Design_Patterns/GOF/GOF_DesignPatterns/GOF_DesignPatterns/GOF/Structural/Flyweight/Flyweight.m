//
//  Flyweight.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Flyweight.h"

#pragma mark Basic Unit

//Basic Unit
@implementation BasicUnit
@end

#pragma mark FlyweightImageFactory

//FlyweightImageFactory
@implementation FlyweightImageFactory
NSMutableDictionary *_imageDictionary;
+(UIImage *)getImage:(NSString *)imageName
{
    if (!_imageDictionary)
        _imageDictionary = [[NSMutableDictionary alloc] init];
    
    if (![_imageDictionary objectForKey:imageName])
    {
        [_imageDictionary setObject:[UIImage imageNamed:[[NSString alloc] initWithFormat:@"%@.jpeg",imageName]] forKey:imageName];
        NSLog(@"Loading reusable image of the %@", imageName);
    }
    
    return [_imageDictionary objectForKey:imageName];
}
@end

#pragma mark Concrete Units

//Dragon
@implementation Dragon
-(id) init
{
    self = [super init];
    self.name = @"Flyweight_Dragon";
    self.health = 150;
    self.image = [FlyweightImageFactory getImage:@"Flyweight_Dragon"];
    return self;
    
}
@end

//Goblin
@implementation Goblin
-(id) init
{
    self = [super init];
    
    self.name = @"Flyweight_Goblin";
    self.health = 20;
    self.image = [FlyweightImageFactory getImage:@"Flyweight_Goblin"];
    return self;
    
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation Flyweight
- (id)init
{
    NSLog(@"Flyweight Created");
    
    NSMutableArray *units = [[NSMutableArray alloc] init];
    for ( int i = 0 ; i < 50000; i++)
    {
        [units addObject:[[Dragon alloc] init]];
    }
    NSLog(@"50000 instances of dragons created");
    for ( int i = 0 ; i < 50000; i++)
    {
        [units addObject:[[Goblin alloc] init]];
    }
    NSLog(@"50000 instances of goblins created");
    
    NSLog(@"\n");
    return self;
}
@end

