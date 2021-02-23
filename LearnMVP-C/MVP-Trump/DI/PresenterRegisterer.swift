//
//  PresenterRegisterer.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation
import Swinject

class PresenterRegisterer {
    static func registerDependencyForPresenters(container: Container) {
        registerForHome(container: container)
        registerForChange(container: container)
    }
    
    static func registerForHome(container: Container) {
        container.register(HomePresenter.self) { (_, view: HomeView) -> HomePresenter in
            return ImpHomePresenter(view: view)
        }
    }
    
    static func registerForChange(container: Container) {
        container.register(ChangePresenter.self) { (_, view: ChangeView) -> ChangePresenter in
            return ChangePresenterImpl(view: view)
        }
    }
}
