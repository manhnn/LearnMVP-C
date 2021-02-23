//
//  AnimalType.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation

@objc protocol ChangePresenter {
    func changeName(_ name: String) -> String
}

class ChangePresenterImpl: BasePresenter<ChangeView>, ChangePresenter {
    func changeName(_ name: String) -> String {
        return "\(name) (+_+) \(name)"
    }
}
