//
//  ViewController.m
//  CommandPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "ViewController.h"
#import "Invoker.h"
#import "AddPageCommand.h"
#import "AddRequirementCommand.h"
#import "ModifyCodeCommand.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Invoker *invoker = [[Invoker alloc] init];
    
    Command *addRequireCMD = [[AddRequirementCommand alloc] init];
    invoker.command = addRequireCMD;
    [invoker action];
    
    Command *addPageCMD = [[AddPageCommand alloc] init];
    invoker.command = addPageCMD;
    [invoker action];
    
    Command *modifyCodeCMD = [[ModifyCodeCommand alloc] init];
    invoker.command = modifyCodeCMD;
    [invoker action];
}

@end
