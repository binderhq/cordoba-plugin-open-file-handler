/********* OpenFileHandler.m Cordova Plugin Implementation *******/

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "AppDelegate+OpenFileHandler.h"

@implementation AppDelegate (notification)

- (BOOL) application:(UIApplication *)application openURL:(NSURL *) url sourceApplication:(NSString *) sourceApplication annotation:(id) annotation
{
    NSLog(@"The file contained: %@",url.absoluteString);

    return YES;
}

@end
