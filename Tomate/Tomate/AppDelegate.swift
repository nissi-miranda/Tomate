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
        
        guard let apiKey = dict["API_KEY"] as? String else {
          fatalError("API Key not set in plist for this environment")
        }
        
        AppDelegate.apiKey = apiKey
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}
}

