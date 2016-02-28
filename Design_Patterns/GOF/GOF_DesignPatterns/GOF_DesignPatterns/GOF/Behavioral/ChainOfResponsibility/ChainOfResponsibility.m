//
//  ChainOfResponsibility.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "ChainOfResponsibility.h"

#pragma mark Items

//Basic Item
@implementation BasicItem
@end

//Toy
@implementation Toy
@end

//Electronics
@implementation Electronics
@end

//Trash
@implementation Trash
@end

#pragma mark Handlers

//Handler
@implementation BasicHandler
-(void)handleItem:(BasicItem *)item{}
@end

//Toy Handler
@implementation ToysHandler
-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Toy class]])
    {
        NSLog(@"Toy found. Handling");
    }
    else
    {
        NSLog(@"Toy not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}
@end

//Electronics Handler
@implementation ElectronicsHandler
-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Electronics class]])
    {
        NSLog(@"Electronics found. Handling");
    }
    else
    {
        NSLog(@"Electronics not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}
@end

//Trash Handler
@implementation TrashHandler

-(void) handleItem:(BasicItem *)item
{
    NSLog(@"Found undefined item. Destroying");
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation ChainOfResponsibility
- (id)init
{
    NSLog(@"Chain Of Resposibility Created");
    
    //Alloc items and handlers
    BasicItem *toy = [Toy new];
    BasicItem *electronic = [Electronics new];
    BasicItem *trash = [Trash new];
    BasicHandler *toysHandler = [ToysHandler new];
    BasicHandler *electronicsHandler = [ElectronicsHandler new];
    BasicHandler *otherItemHandler = [TrashHandler new];
    
    //Setting chain of responsiblity
    electronicsHandler.nextHandler = otherItemHandler;
    toysHandler.nextHandler = electronicsHandler;
    
    //Handling
    [toysHandler handleItem:toy];
    [toysHandler handleItem:electronic];
    [toysHandler handleItem:trash];
    
    NSLog(@"\n");
    return self;
}
@end
