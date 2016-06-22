//
//  ViewController.m
//  BuilderDemo01
//
//  Created by suxinde on 16/6/22.
//  Copyright © 2016年 SkyPrayer Studio. All rights reserved.
//

#import "ViewController.h"
#import "ChasingGame.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];
    
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];
    
    // do something else with the player and enemey
    
    
}

@end
