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
    var names = [
        "Nikola",
        "Anatolii",
        "Andrew",
        "Jessy",
        "Sasha",
        "Masha",
        "Vova"
    ]
    var surnames = [
        "Berry",
        "Cherry",
        "Gerry",
        "Merry",
        "Terry",
        "Supra",
        "Bupra"
    ]
    var phones = [
        "8(999)356-56-56",
        "8(888)444-43-43",
        "8(855)777-67-67",
        "8(959)555-05-05",
        "8(965)473-23-23",
        "8(929)117-15-15",
        "8(987)-122-33-12"
    ]
    var emails = [
        "berry@bk.ru",
        "cherry@bk.ru",
        "gerry@bk.ru",
        "merry@bk.ru",
        "terry@bk.ru",
        "supra@bk.ru",
        "bupra@bk.ru"
    ]
}

let personsInfo = DataManager()

