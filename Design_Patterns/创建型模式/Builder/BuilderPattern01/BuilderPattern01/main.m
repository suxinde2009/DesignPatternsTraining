//
//  main.m
//  BuilderPattern01
//
//  Created by suxinde on 2016/11/15.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Director.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Director *director = [Director new];
        
        for(int i = 0; i < 3; i++) {
            [director.benzModelA run];
        }
    
        for(int i = 0; i < 2; i++) {
            [director.benzModelB run];
        }
    
        for(int i = 0; i < 4; i++) {
            [director.bmwModelX run];
        }
        
        for(int i = 0; i < 1; i++) {
            [director.bmwModelY run];
        }
    
    }
    return 0;
}
