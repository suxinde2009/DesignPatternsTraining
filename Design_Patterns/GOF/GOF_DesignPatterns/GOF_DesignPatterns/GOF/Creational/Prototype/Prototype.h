//
//  Prototype.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Prototype - Warriors

//Prototype
@interface Warrior : NSObject <NSCopying>
- (void) presentMyself;
@end

//Concrete Prototype
@interface StarWarsWarrior : Warrior
{
    NSString* type;
    NSString* side;
    NSString* weapon;
}
@property (nonatomic, retain) NSString* type;
@property (nonatomic, retain) NSString* side;
@property (nonatomic, retain) NSString* weapon;
- (id) initWithType:(NSString*)hisType side:(NSString*)fightingSide weapon:(NSString*)fightingWeapon;
@end

//Concrete Prototype
@interface Samurai : Warrior
{
    NSString* name;
    NSString* style;
}
@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* style;
- (id) initWithName:(NSString*)realName style:(NSString*)kungFuStyle;
@end

#pragma mark Prototype [Application Interface]

//Client [Application Interface]
@interface Prototype : NSObject
@end
