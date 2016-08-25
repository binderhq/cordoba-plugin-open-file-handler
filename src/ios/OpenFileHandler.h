#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface ClientCertificate : CDVPlugin
{
    NSString *notificationCallbackId;
    NSString *callback;
}

@property (nonatomic, copy) NSString *callbackId;
@property (nonatomic, copy) NSString *notificationCallbackId;
@property (nonatomic, copy) NSString *callback;

- (void)registerCallback:(CDVInvokedUrlCommand*)command;
- (void)notifyFileOpened;

@end