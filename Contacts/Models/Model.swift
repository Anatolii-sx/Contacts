//
//  Model.swift
//  Contacts
//
//  Created by Анатолий Миронов on 07.09.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList(persons: DataManager) -> [Person] {
        persons.names.shuffle()
        persons.surnames.shuffle()
        persons.phones.shuffle()
        persons.emails.shuffle()
        
        var personsList: [Person] = []
        
        for number in 0..<persons.names.count {
            personsList.append(
                Person(
                    name: persons.names[number],
                    surname: persons.surnames[number],
                    phone: persons.phones[number],
                    email: persons.emails[number]
                )
            )
        }
        
        return personsList
    }
}

class DataManager {
    var names = ["Nikola", "Anatolii", "Andrew"]
    var surnames = ["Berry", "Cherry", "Gerry"]
    var phones = ["1111111111", "2222222222", "3333333333"]
    var emails = ["1111@aa.ru", "2222@bb.ru", "33333@cc.ru"]
}

let personsInfo = DataManager()

