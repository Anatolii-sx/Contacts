//
//  PersonsListWithDetailsViewController.swift
//  Contacts
//
//  Created by Анатолий Миронов on 07.09.2021.
//

import UIKit

class PersonsListWithDetailsViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        var content: UIListContentConfiguration
        
        let personInfo = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            content = cell.defaultContentConfiguration()
            
            content.text = personInfo.phone
            content.image = UIImage(systemName: "phone")
        default:
            cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            content = cell.defaultContentConfiguration()
            
            content.text = personInfo.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
