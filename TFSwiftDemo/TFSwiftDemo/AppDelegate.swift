//
//  AppDelegate.swift
//  TFSwiftDemo
//
//  Created by Ricky on 2020/12/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, TFThisshopManagerDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        TFThisshopManager.sharedInstance().tfAppId = "TF10000"
        TFThisshopManager.sharedInstance().tfAppKey = "7D358ADB9B9646FD"
        TFThisshopManager.sharedInstance().delegate = self
        return true
    }
    
    //thisshopManager delegate
    func thisshopRechargeSuccessed(withOrderId orderId: String) {
        print("recharge successed with orderId:%@",orderId)
    }
    
    func thisshopRechargeFailed(withOrderId orderId: String) {
        print("recharge failed with orderId:%@",orderId)
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

