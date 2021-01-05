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
    [TFThisshopManager sharedInstance].TFAppId = @"TF10000";
    //set AppKey
    [TFThisshopManager sharedInstance].TFAppKey = @"7D358ADB9B9646FD";
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
-(void)thisshopRechargeSuccessedWithOrderId:(NSString *)orderId
{   //Recharge Successe
    NSString * str = [NSString stringWithFormat:@"recharge successed with orderId:%@", orderId];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Sucessed" message:str preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirm = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:confirm];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:true completion:nil];
    
}

-(void)thisshopRechargeFailedWithOrderId:(NSString *)orderId
{   //Recharge Failed
    NSString * str = [NSString stringWithFormat:@"recharge failed with orderId:%@", orderId];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Failed" message:str preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirm = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:confirm];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:true completion:nil];
    
}

@end
