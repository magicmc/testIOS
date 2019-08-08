//
//  AppDelegate.m
//  test2ios
//
//  Created by magicma on 2018/8/2.
//  Copyright © 2018年 magicma. All rights reserved.
//

#import "AppDelegate.h"
//@import Firebase;
//@import GoogleTagManager;


//
//@interface MYCustomVariable:NSObject<TAGCustomFunction>
//@end
//
//@implementation MYCustomVariable
//
//- (NSObject*)executeWithParameters:(NSDictionary*)parameters {
//    // Add custom tag implementation here.
//    NSLog(@"@22====%@",parameters);
//    return @42;
//}
//@end


@interface AppDelegate ()

@end

@implementation AppDelegate

//@interface NSObject (myTest)
//+ (void) showColor;
//@end
//
//@implementation NSObject (myTest)
//- (void) showColor
//{
//    NSLog(@"nsobject color");
//}
//@end



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Class class = NSClassFromString(@"TAGLogger");
    
    SEL originalSelector = NSSelectorFromString(@"info:");
    SEL detourSelector = @selector(detour_info:);
    
//    Method originalMethod = class_getClassMethod(class, originalSelector);
//    Method detourMethod = class_getClassMethod([self class], detourSelector);
//    
//    class_addMethod(class,
//                    detourSelector,
//                    method_getImplementation(detourMethod),
//                    method_getTypeEncoding(detourMethod));
//    
//    method_exchangeImplementations(originalMethod, detourMethod);
    
//    [FIRApp configure];
//    [FIRAnalytics logEventWithName:kFIREventSelectContent
//                        parameters:@{
//                                     kFIRParameterItemID:@"123",
//                                     kFIRParameterItemName:@"my_function",
//                                     kFIRParameterContentType:@"image"
//                                     }];
//    [[FIRConfiguration sharedInstance] setLoggerLevel:FIRLoggerLevelMax];
//
//    FIRRemoteConfig *remoteConfig = [FIRRemoteConfig remoteConfig];
//    FIRRemoteConfigSettings *remoteConfigSettings = [[FIRRemoteConfigSettings alloc] initWithDeveloperModeEnabled:YES];
//    remoteConfig.configSettings = remoteConfigSettings;
//    [remoteConfig setDefaultsFromPlistFileName:@"RemoteConfigDefaults"];
//
//    [remoteConfig fetchWithExpirationDuration:10000 completionHandler:^(FIRRemoteConfigFetchStatus status, NSError *error) {
//        if (status == FIRRemoteConfigFetchStatusSuccess) {
//            NSLog(@"Config fetched!");
//            [remoteConfig activateFetched];
//
//            NSString *welcomeMessage = remoteConfig[@"magic_test"].stringValue;
//            NSLog(@"@67=======%@", welcomeMessage);
//        } else {
//            NSLog(@"Config not fetched");
//            NSLog(@"Error %@", error.localizedDescription);
//        }
////        [self displayWelcome];
//    }];
    

    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
