/********* OpenFileHandler.m Cordova Plugin Implementation *******/

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "OpenFileHandler.h"

@implementation OpenFileHandler

- (void)pluginInitialize
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dispatchOpenURLEvent:) name:UIApplicationLaunchOptionsURLKey object:nil];
}


- (void)dispatchOpenURLEvent:(NSNotification*)notification
{
    NSLog(@"%@", notification.userInfo);
//    CDVPluginResult* pluginResult = nil;
//    NSString* echo = [command.arguments objectAtIndex:0];
//    
//    if (echo != nil && [echo length] > 0) {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//    } else {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//    }
//    
//    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
