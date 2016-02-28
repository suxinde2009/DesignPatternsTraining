//
//  Iterator.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Iterator.h"
#pragma mark - Iterators

//Iterator
@implementation BasicEnumerator
-(id)initWithItems:(NSMutableArray *)anItems
{
    return nil;
}
-(NSArray *)allObjects
{
    return nil;
}
-(id) nextObject
{
    return nil;
}
@end

//BadItemsEnumerator
@implementation BadItemsEnumerator
-(id) initWithItems:(NSMutableArray *)anItems
{
    self = [super init];
    itemsArray = [NSMutableArray new];
    for ( ItemInShop *item in anItems)
    {
        if (item.isBroken)
            [itemsArray addObject:item];
    }
    internalEnumerator = [itemsArray objectEnumerator];
    
    return self;
}

-(NSArray *)allObjects
{
    return itemsArray;
}

-(id) nextObject
{
    return [internalEnumerator nextObject];
}
@end

//GoodItemsEnumerator
@implementation GoodItemsEnumerator

-(id) initWithItems:(NSMutableArray *)anItems
{
    self = [super init];
    itemsArray = [NSMutableArray new];
    for ( ItemInShop *item in anItems)
    {
        if (!item.isBroken)
            [itemsArray addObject:item];
    }
    internalEnumerator = [itemsArray objectEnumerator];
    
    return self;
}
-(NSArray *)allObjects
{
    return itemsArray;
}
-(id) nextObject
{
    return [internalEnumerator nextObject];
}
@end

#pragma mark - Aggregate

//Item In Shop
@implementation ItemInShop
-(id) initWithArgs:(NSString *)aName andQualityBroken:(BOOL)isBroken
{
    self = [super init];
    self.name = aName;
    self.isBroken = isBroken;
    return self;
}
@end

//Shop Warehouse
@implementation ShopWarehouse
-(id) init
{
    self = [super init];
    
    goods = [NSMutableArray new];
    
    return self;
}

-(void) addItem:(ItemInShop *)anItem
{
    [goods addObject:anItem];
}

-(NSObject *) getBrokenItemsEnumerator
{
    badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:goods];
    return badItemsEnumerator;
}

-(NSObject *) getGoodItemsEnumerator
{
    goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:goods];
    return goodItemsEnumerator;
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation Iterator
- (id)init
{
    NSLog(@"Iterator Created");
    
    ShopWarehouse *shopWarehouse = [ShopWarehouse new];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item1" andQualityBroken:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item2" andQualityBroken:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item3" andQualityBroken:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item4" andQualityBroken:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item5" andQualityBroken:NO]];
    
    GoodItemsEnumerator *goodIterator = (id)[shopWarehouse getGoodItemsEnumerator];
    BadItemsEnumerator *badIterator = (id)[shopWarehouse getBrokenItemsEnumerator];
    ItemInShop *element;
    
    while (element = [goodIterator nextObject])
        NSLog(@"Good Item = %@", element.name);
    while (element = [badIterator nextObject])
        NSLog(@"Bad Item = %@", element.name);
    
    NSLog(@"\n");
    return self;
}
@end
