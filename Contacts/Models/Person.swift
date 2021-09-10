//
//  Person.swift
//  Contacts
//
//  Created by Анатолий Миронов on 07.09.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var personsList: [Person] = []
       
        let names = DataManager.personsInfo.names.shuffled()
        let surnames = DataManager.personsInfo.surnames.shuffled()
        let phones = DataManager.personsInfo.phones.shuffled()
        let emails = DataManager.personsInfo.emails.shuffled()
        
        let countOfIteration = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<countOfIteration {
            personsList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        return personsList
    }
}

