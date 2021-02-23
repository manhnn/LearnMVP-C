//
//  ChangeViewController.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 23/02/2021.
//

import UIKit

class ChangeViewController: BaseVC<ChangePresenter, ChangeView> {

    @IBOutlet weak var changeLabel: UILabel!
    
    var changeCoordinator: ChangeCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeLabel.text = self.presenter.changeName(changeCoordinator.cat.name)
        print("didload")
    }

    @IBAction func changePressed(_ sender: Any) {
        changeCoordinator.stop()
    }
    
}

extension ChangeViewController: ChangeView {
    
}
