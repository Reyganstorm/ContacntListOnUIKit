//
//  DataManager.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names: [String] = [ "Aang", "Zuko", "Katara", "Sokka", "Toff", "Azula", "Tay Li", "Airo", "Suyuki", "Princess Ui"]
    let numbers: [String] = ["now", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let signs: [String] = ["brave - смелый", "kind - добрый", "sensible - благоразумный", "calm - спокойный", "stupid - глупый", "shy - скромный", "strong-willed - решительный", "proud - гордый", "sociable - общительный", "handy - ловкий"]
    let lovelyFood: [String] = ["noodles", "dumplings", "rice", "seafood soup", "roast", "sushi", "chicken in sweet and sour sauce", "cabbage in batter", "air", "fruit"]
    
    private init() {}
}
