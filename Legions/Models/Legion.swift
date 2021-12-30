//
//  Legion.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//


struct Legion {
    let name: String
    let number: String
    let primarch: String
}

struct Primarch {
    let name: String
    let status: String
    let planet: String
}

struct Chaos {
    let names: String
    let description: String
}

extension Legion {
    static func getLegionList() -> [Legion] {
        
        var legions: [Legion] = []
        
        let legionNames = DataManager.shared.legionNames
        let numbers = DataManager.shared.numbers
        let primarchs = DataManager.shared.primarchNames
        
        let iterationCount = min(legionNames.count, numbers.count, primarchs.count)
        
        for index in 0..<iterationCount {
            let legion = Legion(
                name: legionNames[index],
                number: numbers[index],
                primarch: primarchs[index]
            )
            
            legions.append(legion)
        }
        return legions
    }
}


