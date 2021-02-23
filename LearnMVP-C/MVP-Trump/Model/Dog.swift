//
//  Dog.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation

class Dog: NSObject {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() -> String {
        return "gow bow"
    }
}
