//
//  AnimalType.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation

protocol AnimalType: class {
    var name: String { get }
    func sound() -> String
}
