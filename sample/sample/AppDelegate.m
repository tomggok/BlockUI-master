//
//  AppDelegate.m
//  sample
//
//  Created by 张玺 on 12-9-10.
//  Copyright (c) 2012年 张玺. All rights reserved.
//

#import "AppDelegate.h"


#import "BlockUI.h"
#import "MenuViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    
    MenuViewController *menu = [[MenuViewController alloc] init];
    menu.navigationItem.title = @"BlockUI";
    
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:menu];
    [self.window makeKeyAndVisible];

    
    
    
    //***************
    [NSObject perform:^{
        NSLog(@"start");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"end");
         [NSThread sleepForTimeInterval:2];
    } withCompletionHandler:^{
        NSLog(@"finished");
    }];
    
    NSLog(@"----");
    
    
//    
//    
//     dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    
//     dispatch_group_t group = dispatch_group_create();
//    
//        dispatch_group_async(group, queue, ^{
//            
//               [NSThread sleepForTimeInterval:1];
//            
//              NSLog(@"group1");
//            
//          });
//        
//        dispatch_group_async(group, queue, ^{
//            
//                 [NSThread sleepForTimeInterval:2];
//            
//                NSLog(@"group2");
//            
//            });
//        
//        dispatch_group_async(group, queue, ^{
//              [NSThread sleepForTimeInterval:3];
//            
//               NSLog(@"group3");
//            
//             });
//        
//        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//            
//                NSLog(@"updateUi");
//            
//            });
//        
//     dispatch_release(group);
//
    
    

    return YES;
}


@end
