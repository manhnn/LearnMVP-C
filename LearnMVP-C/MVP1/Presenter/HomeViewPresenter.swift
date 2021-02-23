//
//  HomeViewPresenter.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 22/02/2021.
//

import Foundation

protocol HomeViewPresenterDelegate: class {
    func updateUI(_ categoryName: String)
}

// Class Presenter: Chịu trách nhiệm xử lí logic
class HomeViewPresenter {
    // Khai báo delegate để presenter có thể dùng để tương tác với View.
    //Ở đây, delegate và category được khai báo kiểu protocol và được khởi tạo trong hàm init để tránh bị dependency.
    weak var delegate: HomeViewPresenterDelegate?
    let categoryService: CategoryServiceDelegate!
    
    init(view: HomeViewPresenterDelegate, service: CategoryService) {
        delegate = view
        categoryService = service
    }
    
    func searchCategoryById(id: Int) {
        let result = categoryService.getCategoryById(id: id)
        if let categoryName = result?.name {
            // Sau khi thực hiện xong việc truy vấn database, presenter dùng delegate để yêu cầu View update UI.
           delegate?.updateUI(categoryName)
        }
    }
}
