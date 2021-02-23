//
//  Coordinator.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation

protocol Coordinator {
    var started: Bool { get }
    
    func start()
    func stop()
}
