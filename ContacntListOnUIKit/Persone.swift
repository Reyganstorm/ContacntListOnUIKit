//
//  Persone.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import Foundation

struct Person {
    let name: String
    let number: String
    let character: String
    let food: String
    
    var queueAtTheStore: String {
        "\(name) is \(number) turn"
    }
}

extension Person {

    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        var names = DataManager.shared.names.shuffled()
        var numbers = DataManager.shared.numbers.shuffled()
        var signs = DataManager.shared.signs.shuffled()
        var loveFood = DataManager.shared.lovelyFood.shuffled()
        
        for _ in 0..<names.count {
            let person = Person(
                name: names.removeFirst(),
                number: numbers.removeFirst(),
                character: signs.removeFirst(),
                food: loveFood.removeFirst()
            )
            persons.append(person)
        }
        
        return persons
    }
}

