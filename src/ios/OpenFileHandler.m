#import "OpenFileHandler.h"

@implementation OpenFileHandler

@synthesize callbackId;
@synthesize notificationCallbackId;
@synthesize callback;

- (void)notifyFileOpened:(CDVInvokedUrlCommand*)command {
    NSLog(@"File opened via default file handler");

    NSString * jsCallBack = [NSString stringWithFormat:@"alert('File opened via default file handler'');"];
    [self.webView stringByEvaluatingJavaScriptFromString:jsCallBack];
}

- (void)register:(CDVInvokedUrlCommand*)command;
{
    self.callbackId = command.callbackId;
}

@end