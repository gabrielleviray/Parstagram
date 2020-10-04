//
//  AppDelegate.m
//  Pods
//
//  Created by Gabrielle Viray on 10/3/20.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Parse/Parse.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(  NSDictionary *)launchOptions {

        ParseClientConfiguration *config = [ParseClientConfiguration   configurationWithBlock:^(id<ParseMutableClientConfiguration> configuration) {

                configuration.applicationId = @"codepathInstagram";
                configuration.server = @"https://parseapi.back4app.com";
        }];

        [Parse initializeWithConfiguration:config];

        return YES;
}
