//
//  CategoryService.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 22/02/2021.
//

import Foundation

protocol CategoryServiceDelegate: class {
    func getCategoryById(id: Int) -> Category?
}

// Class Service chịu trách nhiệm tương tác với Model
class CategoryService: CategoryServiceDelegate {
    func getCategoryById(id: Int) -> Category? {
        let categories = [Category(id: 1, name: "Movies"),
                          Category(id: 2, name: "Books"),
                          Category(id: 3, name: "Computer")]
        
        let category = categories.filter({$0.id == id}).first
        
        return category
    }
}
