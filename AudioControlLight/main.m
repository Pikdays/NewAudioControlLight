//
//  main.m
//  AudioControlLight
//
//  Created by yin yi on 2013/01/27.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "MobiSageSDK.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        [[MobiSageManager getInstance] setPublisherID:@"e14308cfe946448bb68b3249c7fc4020"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
