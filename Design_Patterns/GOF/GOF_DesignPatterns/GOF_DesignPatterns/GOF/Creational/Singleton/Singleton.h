//
//  Singleton.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Singleton God

//Singleton
@interface God : NSObject
{
    NSString* name;
}
@property (nonatomic, retain) NSString* name;
+ (God*) getInstance;
@end

#pragma mark - Singleton [Application Interface]

//Application [Singleton Interface]
@interface Singleton : NSObject
@end
