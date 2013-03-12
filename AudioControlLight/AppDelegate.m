//
//  AppDelegate.m
//  AudioControlLight
//
//  Created by yin yi on 2013/01/27.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MobClick.h"

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [MobClick startWithAppkey:@"5104dcab5270153eae00002c"];
    [MobClick updateOnlineConfig];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onlineConfigCallBack:) name:UMOnlineConfigDidFinishedNotification object:nil];
    
    return YES;
}

- (void)onlineConfigCallBack:(NSNotification *)note {
    
//    NSLog(@"online config has fininshed and note = %@", [note.userInfo objectForKey:@"adFlag"]);
//    if ([[note.userInfo objectForKey:@"adFlag"] isEqualToString:@"false"]) {
//        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"flag"];
//    }
    
//    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"flag"] == nil && [[note.userInfo objectForKey:@"adFlag"] isEqualToString:@"true"]) {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"xianMian"];
    [(ViewController*)window.rootViewController addRecommend];
//    ((ViewController*)window.rootViewController).url = [note.userInfo objectForKey:@"adFlag"];
//    }
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    [(ViewController*)window.rootViewController recordStop];
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [(ViewController*)window.rootViewController recordStart];
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
