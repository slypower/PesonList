//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Виталий Бобрик on 25.03.22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else {return}
        guard let infoPersonListVC = viewControllers?.last as? InfoPersonViewController else {return}
        
        let persons = Person.getPerson()
        personListVC.persons = persons
        infoPersonListVC.persons = persons
    }
    
}
