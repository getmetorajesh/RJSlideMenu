//
//  AppDelegate.swift
//  RJSlideMenu
//
//  Created by rjk on 6/01/2016.
//  Copyright © 2016 Techiepandas. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
       // self.createSlideMenu()
        return true
    }
    
  //  func createSlideMenu() {
    func createSlideMenu() -> SlideMenuController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //UINavigationBar.appearance().tintColor = UIColor(red: 0.05, green: 0.47, blue: 0.91, alpha: 1.0)
       UINavigationBar.appearance().barTintColor = UIColor.redColor() //UIColor(red: 0.05, green: 0.47, blue: 0.91, alpha: 1.0)
        //UINavigationBar. = // UIColor(red: 0.05, green: 0.47, blue: 0.91, alpha: 1.0)
        
       UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
       UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        
        let mainViewController = storyboard.instantiateViewControllerWithIdentifier("HomePageViewController") as! HomePageViewController
        let leftViewController = storyboard.instantiateViewControllerWithIdentifier("LeftMenuViewController") as! LeftMenuViewController
         let rightViewController = storyboard.instantiateViewControllerWithIdentifier("OtherViewController") as! OtherViewController
        
        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
        UINavigationBar.appearance().backgroundColor = UIColor.blueColor()
        UINavigationBar.appearance().alpha = 1.0
        // UINavigationBar.appearance().translucent = false
        
        
        leftViewController.mainViewController = nvc
        
        let slideMenuController = ExSlideMenuController(mainViewController:nvc, leftMenuViewController: leftViewController,rightMenuViewController: rightViewController)
        slideMenuController.automaticallyAdjustsScrollViewInsets = true
        self.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
        self.window?.rootViewController = slideMenuController
        self.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
        //self.window?.makeKeyAndVisible()
        return slideMenuController
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

