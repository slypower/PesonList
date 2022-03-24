//
//  Person.swift
//  PersonsList
//
//  Created by Виталий Бобрик on 23.03.22.
//


struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        
        var persons:[Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCoun = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count)
        
        for index in 0..<iterationCoun{
            let person = Person(name: names[index], surname: surnames[index], email: emails[index], phone: phones[index])
            persons.append(person)
        }
        return persons
    }
}
