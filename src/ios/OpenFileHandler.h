#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface OpenFileHandler : CDVPlugin
{
    NSString *filename;
}

@property (nonatomic, copy) NSString *filename;

- (void)notifyFileOpened:(NSURL*)fileUrl;
- (void)checkForOpenedFile:(CDVInvokedUrlCommand*)command;

@end