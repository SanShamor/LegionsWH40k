//
//  Legion.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

struct Legion {
    let name: String
    let number: String
    let pictureLink: String?
    let primarch: Primarch
}

struct Primarch {
    let name: String
    let status: String
    let planet: String
}

struct ChaosGod {
    let discription: String
    let pictureLink: String?
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
        let urls = DataManager.shared.urlsAstartes
        let primarchNames = DataManager.shared.primarchNames
        
        let iterationCount = min(legionNames.count, numbers.count, primarchNames.count)
        
        for index in 0..<iterationCount {
            let legion = Legion(
                name: legionNames[index],
                number: numbers[index],
                pictureLink: urls[index],
                primarch: Primarch.getPrimarchList()[index]
            )
            
            legions.append(legion)
        }
        
        return legions
    }
}

extension Primarch {
        static func getPrimarchList() -> [Primarch] {
            var primarchs: [Primarch] = []
            
            let primarchNames = DataManager.shared.primarchNames
            let statusPosition = DataManager.shared.statusPosition
            let planetList = DataManager.shared.planetList
            
            let iterationCount = min(primarchNames.count, statusPosition.count, planetList.count)
            
            for index in 0..<iterationCount {
                let primarch = Primarch(
                    name: primarchNames[index],
                    status: statusPosition[index],
                    planet: planetList[index]
                )
                
                primarchs.append(primarch)
            }
            
            return primarchs
        }
    }

