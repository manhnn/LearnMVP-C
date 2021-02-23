//
//  HomeViewController.swift
//  LearnMVP-C
//
//  Created by Manh Nguyen Ngoc on 22/02/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryNameLabel: UILabel!
    
    var presenter: HomeViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomeViewPresenter(view: self, service: CategoryService())
    }

    // Khi user tap button, View sẽ chuyển action đến presenter và yêu cầu presenter thực hiện logic.
    @IBAction func didTapButtonSearch(_ sender: Any) {
        presenter.searchCategoryById(id: 1)
        
        
        let catOwner = PetOwner(pet: Cat(name: "Mimi"))
        print(catOwner.play())
        
        let dogOwner = PetOwner(pet: Dog(name: "Milu"))
        print(dogOwner.play())
        
        let petOwner = DIContainer.shared.container.resolve(PetOwner.self)! 
        print(petOwner.play())
    }
}

extension HomeViewController: HomeViewPresenterDelegate {
    // Update UI khi được presenter yêu cầu.
    func updateUI(_ categoryName: String) {
        categoryNameLabel.text = categoryName
    }
}
