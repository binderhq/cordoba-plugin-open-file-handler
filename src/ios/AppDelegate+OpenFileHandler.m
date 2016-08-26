/********* OpenFileHandler.m Cordova Plugin Implementation *******/

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "AppDelegate+OpenFileHandler.h"
#import "OpenFileHandler.h"

@implementation AppDelegate (notification)

- (BOOL) application:(UIApplication *)application openURL:(NSURL *) url sourceApplication:(NSString *) sourceApplication annotation:(id) annotation
{
    OpenFileHandler *openFileHandler = [self getCommandInstance:@"OpenFileHandler"];
    [openFileHandler notifyFileOpened:url];
    
    return YES;
}

- (id) getCommandInstance:(NSString*)className
{
    return [self.viewController getCommandInstance:className];
}

@end
