//
//  Composite_Template_TestCase.m
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-9-9.
//  Copyright (c) 2014年 Su XinDe. All rights reserved.
//

#import "Composite_Template_TestCase.h"

@implementation Composite_Template_TestCase

+ (void)mainTest
{
    // Create a tree structure
    Composite *root = [[Composite alloc] initWithName:@"root"];
    [root add:[[[Leaf alloc] initWithName:@"Leaf A"] autorelease]];
    [root add:[[[Leaf alloc] initWithName:@"Leaf B"] autorelease]];
    
    Composite *comp = [[Composite alloc] initWithName:@"Composite X"];
    [comp add:[[[Leaf alloc] initWithName:@"Leaf XA"] autorelease]];
    [comp add:[[[Leaf alloc] initWithName:@"Leaf XB"] autorelease]];
    
    [root add:comp];
    [root add:[[[Leaf alloc] initWithName:@"Leaf C"] autorelease]];
    
    // Add and remove a leaf
    Leaf *leaf = [[Leaf alloc] initWithName:@"Leaf D"];
    [root add:leaf];
    [root remove:leaf];
    
    // Recursively display tree
    [root display:1];
    
}

@end
