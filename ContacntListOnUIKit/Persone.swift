//
//  Persone.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import Foundation

var record = DataManager.init()

struct Person {
    let name: String
    let number: String
    var queueAtTheStore: String {
        "\(name) is \(number) turn"
    }
    let character: String
    let food: String
}

extension Person {
    func getPerson() -> [Person] {
        var persons: [Person] = []
        
        record.names.shuffle()
        record.numbers.shuffle()
        record.signs.shuffle()
        record.lovelyFood.shuffle()
        
        for _ in 0...record.names.count {
            let person = Person(
                name: record.names.removeFirst(),
                number: record.numbers.removeFirst(),
                character: record.signs.removeFirst(),
                food: record.lovelyFood.removeFirst())
            persons.append(person)
        }
        
        return persons
    }
}
