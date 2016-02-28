//
//  Vistor.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Visitor.h"

#pragma mark Warehouse

//Warehouse Item
@implementation WarehouseItem
-(id) initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice
{
    self = [super init];
    self.name = aName;
    self.isBroken = isBrokenState;
    self.price = aPrice;
    return self;
}
@end

//Warehouse
@implementation Warehouse
-(void) addItem:(WarehouseItem *)anItem
{
    if (!_itemsArray)
        _itemsArray = [NSMutableArray new];
    [_itemsArray addObject:anItem];
}

-(void) accept:(id) visitor
{
    [visitor visit:self];
    for (WarehouseItem *item in _itemsArray)
        [visitor visit:item];
}
@end

#pragma mark Visitors

//Quality Checker Visitor
@implementation QualityCheckerVisitor
-(void) visit:(id)anObject
{
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        if ([anObject isBroken])
        {
            NSLog(@"%@ says: Item: %@ is broken",[self class], [anObject name]);
        }
        else
        {
            NSLog(@"%@ says: Item: %@ is cool",[self class], [anObject name]);
        }
    }
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"%@ says: Hmmm, nice warehouse!", [self class]);
        return;
    }
}
@end

//Price Checker Visitor
@implementation PriceCheckerVisitor
-(void) visit:(id)anObject
{
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        NSLog(@"%@ says: Item: %@ have price = %i", [self class], [anObject name], [anObject price]);
    }
    
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"%@ says: Hmmm, I don't know how much Warehouse costs!", [self class]);
        return;
    }
}
@end

#pragma mark [Application Interface]

//[Application Interface]
@implementation Visitor
- (id)init
{
    NSLog(@"Visitor Created");
    
    Warehouse *_localWarehouse = [Warehouse new];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item1" andQuality:NO andPrice:25]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item2" andQuality:NO andPrice:32]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item3" andQuality:YES andPrice:45]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item4" andQuality:NO andPrice:33]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item5" andQuality:NO andPrice:12]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item6" andQuality:YES andPrice:78]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item7" andQuality:YES andPrice:34]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item8" andQuality:NO andPrice:51]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item9" andQuality:NO andPrice:25]];
    
    PriceCheckerVisitor *visitor = [PriceCheckerVisitor new];
    QualityCheckerVisitor *qualityVisitor = [QualityCheckerVisitor new];
    [_localWarehouse accept:visitor];
    [_localWarehouse accept:qualityVisitor];
    
    return self;
}
@end
