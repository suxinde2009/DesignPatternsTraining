//
//  Facade.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Facade.h"

#pragma mark Company's Divisions

//Subsystem
@implementation HumanResourcesDepartment
- (void) fireWorkerWithName:(NSString*)name
{
    NSLog(@"Firing employee: %@", name);
}
@end

//Subsystem
@implementation AccountancyDepartment
- (void) increaseSalaryForEmployee:(NSString*)name { NSLog(@"Increasing salary for: %@", name); }
@end

//Subsystem
@implementation PublicRelationsDepartment
- (void) tvCommercial { NSLog(@"TV Commerial: Everything should be opensource"); }
- (void) freeBeerForEveryone { NSLog(@"Company Policy: Free beer for every employee"); }
@end

#pragma mark The Secretary

//Facade
@implementation Secretary
- (id) initWithHRDep:   (HumanResourcesDepartment*)   hrDep
         accountancy:     (AccountancyDepartment*)      acDep
     publicRelations: (PublicRelationsDepartment*)  prDep
{
    if ([super init] != nil)
    {
        hr = hrDep;
        ac = acDep;
        pr = prDep;
    }
    return self;
}
- (void) fireBestWorker { [hr fireWorkerWithName:@"RocKK"]; }
- (void) giveBossARise { [ac increaseSalaryForEmployee:@"Boss"]; }
- (void) tellEveryoneCompanyIsTheBest
{
    [pr tvCommercial];
    [pr freeBeerForEveryone];
}
- (void) dealloc
{
    hr = nil;
    ac = nil;
    ac = nil;
}
@end

#pragma mark The Boss

//Client
@implementation Boss
- (id) initWithSecretary:(Secretary*)newSecretary
{
    if ([super init] != nil)
    {
        secretary = newSecretary;
    }
    return self;
}
- (void) doMyJob
{
    [secretary giveBossARise];
    [secretary fireBestWorker];
    [secretary tellEveryoneCompanyIsTheBest];
}
- (void) dealloc
{
    secretary = nil;
}
@end

#pragma mark Helpful function

Secretary* buildTheCompany()
{
    HumanResourcesDepartment* hrDep = [HumanResourcesDepartment new];
    AccountancyDepartment* acDep = [AccountancyDepartment new];
    PublicRelationsDepartment* prDep = [PublicRelationsDepartment new];
    Secretary* secretary = [[Secretary alloc] initWithHRDep:hrDep accountancy:acDep publicRelations:prDep];
    return secretary;
}

#pragma mark [Application Interface]

//Application Interface
@implementation Facade

- (id)init
{
    NSLog(@"Facade Created");
    
    Secretary* secretary = buildTheCompany();
    Boss* boss = [[Boss alloc] initWithSecretary:secretary];
    
    [boss doMyJob];
    secretary = nil;
    boss = nil;
    
    NSLog(@"\n");
    return self;
}

@end
