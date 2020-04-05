//
//  AppDelegate.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 05/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var apiKey = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        guard let dict = Bundle.main.infoDictionary else {
          fatalError("Plist file not found")
        }
        
        guard let zomatoApiKey = dict["API_KEY"] as? String else {
          fatalError("API Key not set in plist for this environment")
        }
        
        AppDelegate.apiKey = zomatoApiKey
        
        return true
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

