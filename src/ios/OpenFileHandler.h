//
//  OpenFileHandler.h
//  QAS SCR Access
//
//  Created by Peter Price on 25/08/2016.
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface OpenFileHandler : CDVPlugin {
    // Member variables go here.
}

- (void)dispatchOpenURLEvent:(CDVInvokedUrlCommand*)command;
@end
