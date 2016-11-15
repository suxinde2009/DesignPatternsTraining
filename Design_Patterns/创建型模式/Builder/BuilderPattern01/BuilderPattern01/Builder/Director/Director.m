//
//  Director.m
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Director.h"

#import "BenzBuilder.h"
#import "BMWBuilder.h"

@interface Director ()

@property (nonatomic, strong) BMWBuilder *bmwBuilder;

@property (nonatomic, strong) BenzBuilder *benzBuilder;

@property (nonatomic, strong) NSMutableArray *sequence;

@end

@implementation Director

- (instancetype)init
{
    if (self = [super init]) {
        
        self.sequence = @[].mutableCopy;
        self.bmwBuilder = [BMWBuilder new];
        self.benzBuilder = [BenzBuilder new];
        
    }
    return self;
}

- (BenzModel *)benzModelA
{
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    self.benzBuilder.sequence = self.sequence;
    
    return (BenzModel *)self.benzBuilder.carModel;
}

- (BenzModel *)benzModelB
{
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"alarm"];
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    self.benzBuilder.sequence = self.sequence;
    
    return (BenzModel *)self.benzBuilder.carModel;
}

- (BMWModel *)bmwModelX
{
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"engine boom"];
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    self.bmwBuilder.sequence = self.sequence;
    
    return (BMWModel *)self.bmwBuilder.carModel;
}

- (BMWModel *)bmwModelY
{
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"start"];
    self.bmwBuilder.sequence = self.sequence;
    
    return (BMWModel *)self.bmwBuilder.carModel;
}


@end
