//
//  Vistor.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Basic Visitor

//Basic Visitor
@protocol BasicVisitor
-(void) visit:(id)anObject;
@end

//Warehouse Item
@interface WarehouseItem : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;
@property (nonatomic) int price;
-(id) initWithArgs:(NSString *)aName andQuality:(BOOL) isBrokenState andPrice:(int)aPrice;
@end

//Warehouse
@interface Warehouse : NSObject
{
@private NSMutableArray *_itemsArray;
}
-(void) addItem:(WarehouseItem *) anItem;
-(void) accept:(id) visitor;
@end

#pragma mark Visitors

//Quality Checker Visitor
@interface QualityCheckerVisitor : NSObject
@end

//Price Checker Visitor
@interface PriceCheckerVisitor : NSObject
@end

#pragma mark [Application Interface]

//[Application Interface]
@interface Visitor : NSObject
@end

