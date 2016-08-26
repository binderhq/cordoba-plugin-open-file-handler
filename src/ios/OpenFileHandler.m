#import "OpenFileHandler.h"

@implementation OpenFileHandler

@synthesize filename;

- (void)notifyFileOpened:(NSURL*)fileUrl {
    
    self.filename = fileUrl.path;
}

- (void)checkForOpenedFile:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:self.filename];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

    filename = nil;
}
@end