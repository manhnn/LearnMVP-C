//
//  HomeViewController.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 22/02/2021.
//

import UIKit

class HomeViewController: BaseVC<HomePresenter, HomeView> {

    @IBOutlet weak var categoryNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButtonSearch(_ sender: Any) {
        let cat = Cat(name: "Mimi")
        categoryNameLabel.text = cat.name
        
        let changeCoordinator = ChangeCoordinator(navigation: self.navigationController!)
        changeCoordinator.cat = cat
        changeCoordinator.start()
    }
}

extension HomeViewController: HomeView {
    
}
