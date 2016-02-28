//
//  ChainOfResponsibility.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Items

//Basic Item
@interface BasicItem : NSObject
@end

//Toy
@interface Toy : BasicItem
@end

//Electronics
@interface Electronics : BasicItem
@end

//Trash
@interface Trash : BasicItem
@end

#pragma mark Handlers

//Handler
@interface BasicHandler : NSObject
{
@private BasicHandler *_nextHandler;
}
@property (nonatomic, strong) BasicHandler *nextHandler;
-(void) handleItem:(BasicItem *) item;
@end

//Toy Handler
@interface ToysHandler : BasicHandler
@end

//Electronics Handler
@interface ElectronicsHandler : BasicHandler
@end

//Trash Handler
@interface TrashHandler : BasicHandler
@end

#pragma mark [Application Interface]

//Application Interface
@interface ChainOfResponsibility : NSObject
@end

