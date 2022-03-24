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
    

    
    static func getPerson() -> [Person] {
       [
       ]
    }
}
