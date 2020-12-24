//
//  AppDelegate.m
//  TF-Demo
//
//  Created by mac on 2020/12/11.
//

#import "AppDelegate.h"
#import "ViewController.h"
//#import "TFThisshopManager.h"
#import <TFThisshopKit/TFThisshopKit.h>

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
-(void)thisshopRechargeSuccessedWithOrderNo:(NSString *)orderNo andShopOrderId:(NSString *)shopOrderId andCount:(NSString *)count
{   //Recharge Successe
    NSLog(@"recharge successed with orderNo:%@",orderNo);
}

-(void)thisshopRechargeFailedWithOrderNo:(NSString *)orderNo andShopOrderId:(NSString *)shopOrderId andCount:(NSString *)count
{   //Recharge Failed
    NSLog(@"recharge failed with orderNo:%@",orderNo);

}

@end
