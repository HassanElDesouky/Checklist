//
//  AppDelegate.swift
//  Checklist
//
//  Created by Hassan El Desouky on 4/16/18.
//  Copyright © 2018 Hassan El Desouky. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    
    //MARK:- Properties
    var window: UIWindow?
    let dataModel = DataModel()
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navigationController = window!.rootViewController as! UINavigationController
        let controller = navigationController.viewControllers[0] as! AllListsViewController
        controller.dataModel = dataModel
        
        //Notification authorization
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        saveData()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
        saveData()
    }
    
    //MARK:- Save Data Method
    func saveData() {
        dataModel.saveChecklists()
    }
    
    //MARK:- User Notification Delegates
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print(" ")
    }

}

