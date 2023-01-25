//
//  Person.swift
//  ContactList(SwiftUI)
//
//  Created by Борис Сонин on 25.01.2023.
//


import Foundation

struct Person: Hashable {

    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataStore {
    var names = ["Иван", "Петр", "Николай", "Александр"].shuffled()
    var surnames = ["Лаптев", "Сидоров", "Петров", "Иванов"].shuffled()
    var emails = ["123@gmail.com", "456@gmail.com", "789@gmail.com", "321@mail.ru"].shuffled()
    var phones = ["988-33-44", "233-55-42", "023-44-56", "543-12-34"].shuffled()
    
    func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}
