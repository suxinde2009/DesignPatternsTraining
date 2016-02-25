//
//  AbstractFactory.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/26.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark Abstract Widget Family

//Abstract Product
@interface Button : NSObject
@end
//Abstract Product
@interface Window : NSObject
@end
//Abstract Factory
@interface WidgetFactory : NSObject
- (Button*) createButton;
- (Window*) createWindow;
@end

#pragma mark iOS Widget Family

//Concrete Product
@interface iOSButton : Button
@end
//Concrete Product
@interface iOSWindow : Window
@end
//Concrete Factory
@interface iOSWidgetFactory : WidgetFactory
@end

#pragma mark Linux Widget Family

//Concrete Product
@interface LinuxButton : Button
@end
//Concrete Product
@interface LinuxWindow : Window
@end
//Concrete Factory
@interface LinuxWidgetFactory : WidgetFactory
@end

#pragma mark Abstract Factory [Application Interface]

//Application Interface
@interface AbstractFactory : NSObject
@end
