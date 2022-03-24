//
//  Services.swift
//  PersonsList
//
//  Created by Виталий Бобрик on 23.03.22.
//

class DataManager {
    static let shared = DataManager()
    
    let names = ["John", "Sharon","Aaron","Steven","Nicola",
                 "Ted","Bruce","Carl","Roberd","Nikola"]
    
    let surnames = ["Murphy", "Jankin","Williams","Black","Robertson",
                    "Butler","Isaacson","Swith","Milcom","Vetov"]
    
    let emails = ["aaa@mail.ru","qqq@mail.ru","www@mail.ru","eee@mail.ru","rrr@mail.ru",
                  "ttt@mail.ru","ddd@mail.ru","vvv@mail.ru","fff@mail.ru","ggg@mail.ru"]
    
    let phones = ["13938289","28209404","34059595","4550505","5123434",
                  "613213213","73423423","8234234","9324234","1043455"]
    
    private init() {}
}
