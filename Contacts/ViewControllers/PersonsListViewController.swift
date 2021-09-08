//
//  PersonsListViewController.swift
//  Contacts
//
//  Created by Анатолий Миронов on 07.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private var persons = Person.getPersonsList(persons: personsInfo)
    
    override func viewDidLoad() {
        sendPersonsInfoToPersonsListWithDetailsVC()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let persons = persons[indexPath.row]
        
        content.text = persons.fullName
        
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        
        personDetailVC.person = person
    }
    
    private func sendPersonsInfoToPersonsListWithDetailsVC() {
        guard let tabBarController = tabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        guard let navigationVC = viewControllers[1] as? UINavigationController else { return }
        guard let personsListWithDetailsVC = navigationVC.topViewController as? PersonsListWithDetailsViewController else { return }
        
        personsListWithDetailsVC.persons = persons
    }
}
