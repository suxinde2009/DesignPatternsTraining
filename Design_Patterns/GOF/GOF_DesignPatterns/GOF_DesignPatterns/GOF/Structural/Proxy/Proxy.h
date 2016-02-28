//
//  Proxy.h
//  GOF_DesignPatterns
//
//  Created by su xinde on 16/2/28.
//  Copyright © 2016年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark FileDownloader

//Subject
@interface FileDownloader : NSObject
-(void) slowDownload;
-(void) fastDownload;
@end

#pragma mark FileDownloaderProxy

//Proxy
@interface FileDownloaderProxy : NSObject
{
@private FileDownloader *_downloader;
}
@property (nonatomic) bool isPremiumUser;
-(void) slowDownload;
-(void) fastDownload;
@end

#pragma mark [Application Interface]

//Application Interface
@interface Proxy : NSObject
@end
