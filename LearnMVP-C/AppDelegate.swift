//
//  AppDelegate.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 22/02/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
       
        let homeCoordinator = HomeCoordinator(window: window!)
        homeCoordinator.start()
        
        
        return true
   }
}

