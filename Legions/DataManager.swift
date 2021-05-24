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
        "DarkAngels", "Emperors's Children", "Iron Warriors", "White Scars",
        "Space Wolves", "Imperial Fists", "Night Lords", "Blood Angels",
        "Iron Hands", "World Eaters", "Ultramarines", "Death Guard",
        "Thousand Sons", "Sons of Horus", "World Bearers", "Salamanders",
        "Raven Guard", "Alpha Legion"
    ]
    
    let numbers = [
        "I", "III", "IV", "V",
        "VI", "VII", "VIII", "IX",
        "X", "XII", "XIII", "XIV",
        "XV", "XVI", "XVII", "XIII",
        "XIX", "XX"
    ]
    
    let primarchNames = [
        "Lion El'Jonson", "Fulgrim", "Perturabo", "Jaghatai Khan",
        "Leman Russ", "Rogal Dorn", "Konrad Curse", "Sanguinius",
        "Ferrus Mananus", "Angron", "Roboute Guilliman", "Mortarion",
        "Magnus The Red", "Horus Lupercal", "Lorgar", "Vulcan",
        "Corvus Corax", "Alpharius"
    ]
    
    let statusPosition = [
        "Loyal", "Heresy","Heresy", "Loyal",
        "Loyal", "Loyal", "Heresy", "Loyal",
        "Loyal", "Heresy", "Loyal", "Heresy",
        "Heresy", "Heresy", "Heresy", "Loyal",
        "Loyal", "Heresy"
    ]
    
    let planetList = [
        "Kaliban", "Kemos", "Olimpia", "Chogoris",
        "Fenris", "Inwit", "Nostramo", "Gaal",
        "Medusa", "Nuceria", "Macragge", "Barbarus",
        "Prosperro", "Chthonia", "Monarchy", "Nocturne",
        "Lucaes", "---"
    ]
    
    private init() {}
}
