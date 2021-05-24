//
//  DataManager.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let legionNames = [
        "DarkAngels", "Emperors's Children", "Iron Warriors",
        "White Scars", "Space Wolves", "Imperial Fists",
        "Night Lords", "Blood Angels", "Iron Hands"
    ]
    
    let numbers = [
        "I", "III", "IV",
        "V","VI", "VII",
        "VIII", "IX", "X"
    ]
    
    let primarchNames = [
        "Lion El'Jonson", "Fulgrim", "Perturabo",
        "Jaghatai Khan", "Leman Russ", "Rogal Dorn",
        "Konrad Curse", "Sanguinius", "Ferrus Mananus",
    ]
    
    let statusPosition = [
        "Loyal", "Heresy","Loyal",
        "Heresy","Loyal", "Heresy",
        "Loyal", "Heresy", "Heresy"
    ]
    
    let planetList = [
        "Kaliban", "Kemos", "Olimpia",
        "Chogoris", "Fenris", "Inwit",
        "Nostramo", "Gaal", "Medusa",
    ]
    
    private init() {}
}
