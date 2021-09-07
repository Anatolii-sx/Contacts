//
//  PersonDetailViewController.swift
//  Contacts
//
//  Created by Анатолий Миронов on 07.09.2021.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
