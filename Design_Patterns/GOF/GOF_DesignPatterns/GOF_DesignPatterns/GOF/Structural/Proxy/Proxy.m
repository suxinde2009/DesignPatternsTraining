//
//  Proxy.m
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import "Proxy.h"

#pragma mark FileDownloader

//Subject
@implementation FileDownloader
-(id) init
{
    self = [super init];
    return self;
}
-(void) slowDownload
{
    NSLog(@"Sloooooowly downloading...");
}
-(void) fastDownload
{
    NSLog(@"Shuuuuuh, already downloaded...");
}
@end

#pragma mark FileDownloaderProxy

//Proxy
@implementation FileDownloaderProxy
-(void) fastDownload
{
    if (!_isPremiumUser)
    {
        [self slowDownload];
        return;
    }
    
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    
    [self checkNetworkConnectivity];
    
    [_downloader fastDownload];
}
-(void) slowDownload
{
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    
    [self checkNetworkConnectivity];
    
    [_downloader slowDownload];
}
-(void) checkNetworkConnectivity
{
    NSLog(@"Checking network connectivity...");
}
@end

#pragma mark [Application Interface]

//Application Interface
@implementation Proxy
- (id)init
{
    NSLog(@"Proxy Created");
    
    FileDownloaderProxy *proxy = [[FileDownloaderProxy alloc] init];
    
    NSLog(@"Simple User");
    [proxy setIsPremiumUser:NO];
    [proxy fastDownload];
    
    NSLog(@"Premium User");
    [proxy setIsPremiumUser:YES];
    [proxy fastDownload];
    
    NSLog(@"\n");
    return self;
}
@end

