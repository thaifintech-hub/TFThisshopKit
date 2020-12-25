//
//  AppDelegate.m
//  TF-Demo
//
//  Created by mac on 2020/12/11.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <TFThisshopKit/TFThisshopManager.h>

@interface AppDelegate ()<TFThisshopManagerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController * vc = [[ViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    //set AppId
    [TFThisshopManager sharedInstance].TFAppId = @"TF76786";
    //set AppKey
    [TFThisshopManager sharedInstance].TFAppKey = @"80FC7CA3DFB74672A8D2D7583BF11EB0";
    //set delegate
    [TFThisshopManager sharedInstance].delegate = self;

    
    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  options:(NSDictionary *) options {
    
    [[TFThisshopManager sharedInstance] handleOpenURL:url];
    
    return YES;
}

#pragma mark - thisshopManager delegate
-(void)thisshopRechargeSuccessed
{   //Recharge Successe
    NSLog(@"recharge successed");
}

-(void)thisshopRechargeFailed
{   //Recharge Failed
    NSLog(@"recharge failed");

}

@end
