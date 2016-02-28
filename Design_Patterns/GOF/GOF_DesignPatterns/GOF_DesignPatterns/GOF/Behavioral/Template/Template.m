//
//  Template.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Template.h"

#pragma mark Any Phone Template

//Any Phone Template
@implementation AnyPhoneTemplate
-(void) makePhone
{
    NSLog(@"////%@ Creating Product////", [self class]);
    [self takeBox];
    [self takeCamera];
    [self takeMicrophone];
    [self assemble];
}
-(void) takeBox
{
    NSLog(@"Taking a box");
}
-(void) takeCamera
{
    NSLog(@"Taking a camera");
}
-(void) takeMicrophone
{
    NSLog(@"Taking a microphone");
}
-(void) assemble
{
    NSLog(@"Assembling everythig");
}
@end

//iPhone Maker
@implementation iPhoneMaker
-(void) assemble
{
    [self design];
    [super assemble];
}
-(void) design
{
    NSLog(@"Putting label 'Designed in California'");
}
@end

//Android Maker
@implementation AndroidMaker
-(void) assemble
{
    [self addCPU];
    [self addRam];
    [super assemble];
}
-(void) addCPU
{
    NSLog(@"Installing 4 more CPUs");
}
-(void) addRam
{
    NSLog(@"Installing 2Gigs of RAM");
}
@end

#pragma mark [Application Interface]

//[Application Interface]
@implementation Template
- (id)init
{
    NSLog(@"Template Created");
    
    AndroidMaker *android = [[AndroidMaker alloc] init];
    iPhoneMaker *iphone = [[iPhoneMaker alloc] init];
    [android makePhone];
    [iphone makePhone];
    
    NSLog(@"\n");
    return self;
}
@end
