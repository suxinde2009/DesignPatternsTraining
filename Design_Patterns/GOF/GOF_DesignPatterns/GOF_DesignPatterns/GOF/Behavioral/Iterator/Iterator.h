//
//  Iterator.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>
#pragma mark - Iterators

//Iterator
@interface BasicEnumerator : NSEnumerator
-(id)initWithItems:(NSMutableArray *)anItems;
-(NSArray *)allObjects;
-(id) nextObject;
@end

//BadItemsEnumerator
@interface BadItemsEnumerator : BasicEnumerator
{
@private NSMutableArray *itemsArray;
@private NSEnumerator *internalEnumerator;
}
@end

//GoodItemsEnumerator
@interface GoodItemsEnumerator : BasicEnumerator
{
@private NSMutableArray *itemsArray;
@private NSEnumerator *internalEnumerator;
}
@end

#pragma mark - Aggregate

//Item In Shop
@interface ItemInShop : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;
-(id) initWithArgs:(NSString *)aName andQualityBroken:(BOOL)isBroken;
@end

//Shop Warehouse
@interface ShopWarehouse : NSObject
{
@private NSMutableArray *goods;
@private GoodItemsEnumerator *goodItemsEnumerator;
@private BadItemsEnumerator *badItemsEnumerator;
}
-(void) addItem:(ItemInShop *)anItem;
-(NSEnumerator *) getBrokenItemsEnumerator;
-(NSEnumerator *) getGoodItemsEnumerator;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Iterator : NSObject
@end
