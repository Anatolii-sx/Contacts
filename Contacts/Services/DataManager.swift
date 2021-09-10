//
//  DataManager.swift
//  Contacts
//
//  Created by Анатолий Миронов on 10.09.2021.
//

class DataManager {
    static let personsInfo = DataManager()
    
    let names = [
        "Nikola", "Anatolii", "Andrew",
        "Jessy", "Sasha", "Masha", "Vova"
    ]
    let surnames = [
        "Berry", "Cherry", "Gerry", "Merry",
        "Terry", "Supra", "Bupra"
    ]
    let phones = [
        "8(999)356-56-56", "8(888)444-43-43", "8(855)777-67-67",
        "8(959)555-05-05", "8(965)473-23-23", "8(929)117-15-15",
        "8(987)-122-33-12"
    ]
    let emails = [
        "berry@bk.ru", "cherry@bk.ru", "gerry@bk.ru", "merry@bk.ru",
        "terry@bk.ru", "supra@bk.ru", "bupra@bk.ru"
    ]
    
    private init() {}
}


