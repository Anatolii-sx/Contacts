//
//  UITabBarViewController.swift
//  Contacts
//
//  Created by Анатолий Миронов on 10.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    private var persons = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendInfoToViewControllers()
    }
    
    private func sendInfoToViewControllers() {
        guard let viewControllers = self.viewControllers else { return }

        for viewController in viewControllers {
            if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.persons = persons
            } else if let personsListWithDetailsVC = viewController as? PersonsListWithDetailsViewController {
                personsListWithDetailsVC.persons = persons
            }
        }
    }
}
