//
//  HomeCoordinator.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import UIKit

class HomeCoordinator: Coordinator {
    var window: UIWindow!
    var started: Bool = false
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        if !started {
            started = !started
            let controller = HomeViewController.factory()
            let navigation = UINavigationController.init(rootViewController: controller)
            window.rootViewController = navigation
            window.makeKeyAndVisible()
        }
    }
    
    func stop() {
        
    }
    
    
}
