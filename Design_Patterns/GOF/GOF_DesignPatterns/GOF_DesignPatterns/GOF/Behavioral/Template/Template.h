//
//  Template.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Any Phone Template

//Any Phone Template
@interface AnyPhoneTemplate : NSObject
-(void) makePhone;
-(void) takeBox;
-(void) takeMicrophone;
-(void) takeCamera;
-(void) assemble;
@end

//iPhone Maker
@interface iPhoneMaker : AnyPhoneTemplate
-(void) design;
@end

//Android Maker
@interface AndroidMaker : AnyPhoneTemplate
-(void) addRam;
-(void) addCPU;
@end

#pragma mark [Application Interface]

//[Application Interface]
@interface Template : NSObject
@end