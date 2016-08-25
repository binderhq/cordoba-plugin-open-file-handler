/********* OpenFileHandler.m Cordova Plugin Implementation *******/

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "AppDelegate+OpenFileHandler.h"

@implementation AppDelegate (notification)

- (BOOL) application:(UIApplication *)application openURL:(NSURL *) url sourceApplication:(NSString *) sourceApplication annotation:(id) annotation
{
    // Set modified date of file
    NSError* error;
    NSDictionary* attr = [NSDictionary dictionaryWithObjectsAndKeys:[NSDate date], NSFileModificationDate, NULL];
    
    [[NSFileManager defaultManager] setAttributes: attr ofItemAtPath:url.path error: NULL];
    
    if(error != nil) {
        NSLog(@"Error setting modification date: %@", error.localizedDescription);
    } else {
        NSLog(@"Set modification date on file");
    }
    return YES;
}

@end
