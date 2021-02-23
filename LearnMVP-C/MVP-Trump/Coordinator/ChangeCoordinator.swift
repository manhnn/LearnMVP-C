//
//  ProjectCoordinator.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import UIKit

class ChangeCoordinator: Coordinator {
    var started: Bool = false
    var navigation: UINavigationController!
    var cat: Cat!
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        if started == false {
            started = !started
            let controller = ChangeViewController.factory()
            print("coor")
            controller.changeCoordinator = self
            navigation.pushViewController(controller, animated: true)
        }
    }
    
    func stop() {
        if started {
            started = !started
            navigation.popViewController(animated: true)
        }
    }
}
