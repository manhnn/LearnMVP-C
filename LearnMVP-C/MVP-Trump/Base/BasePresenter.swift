//
//  BasePresenter.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import Foundation
import RxSwift

class BasePresenter<View: AnyObject> {
    weak var view: View?
    var disposeBag = DisposeBag()
    
    init(view: View) {
        self.view = view
    }
}
