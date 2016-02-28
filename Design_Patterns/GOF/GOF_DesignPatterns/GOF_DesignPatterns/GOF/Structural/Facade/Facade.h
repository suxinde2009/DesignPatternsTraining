//
//  Facade.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Company's Divisions

//Subsystem
@interface HumanResourcesDepartment : NSObject
- (void) fireWorkerWithName:(NSString*)name;
@end

//Subsystem
@interface AccountancyDepartment : NSObject
- (void) increaseSalaryForEmployee:(NSString*)name;
@end

//Subsystem
@interface PublicRelationsDepartment : NSObject
- (void) tvCommercial;
- (void) freeBeerForEveryone;
@end

#pragma mark The Secretary

//Facade
@interface Secretary : NSObject
{
    HumanResourcesDepartment*  hr;
    AccountancyDepartment*     ac;
    PublicRelationsDepartment* pr;
}
- (id) initWithHRDep:   (HumanResourcesDepartment*)   hrDep
         accountancy:     (AccountancyDepartment*)      acDep
     publicRelations: (PublicRelationsDepartment*)  prDep;
- (void) fireBestWorker;
- (void) giveBossARise;
- (void) tellEveryoneCompanyIsTheBest;
@end

#pragma mark The Boss

//Client
@interface Boss : NSObject
{
    Secretary* secretary;
}
- (id)   initWithSecretary:(Secretary*)newSecretary;
- (void) doMyJob;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Facade : NSObject
@end

