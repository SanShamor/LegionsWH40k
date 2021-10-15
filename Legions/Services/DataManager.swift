//
//  DataManager.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
        
    // MARK: Legions' Data
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
        "XV", "XVI", "XVII", "XVIII",
        "XIX", "XX"
    ]
    
    let urlsAstartes = [
        "https://cdnb.artstation.com/p/assets/images/images/006/247/113/large/tobias-gotze-sm.jpg?1497104121", // темныeАнгелы
        "https://cdnb.artstation.com/p/assets/images/images/037/087/987/large/cristian-alias-low-res-print-a3-helm.jpg?1619457889", //детиИмпиратора
        "https://cdnb.artstation.com/p/assets/images/images/006/877/715/large/igor-sid-18-iron-warrior.jpg?1501924253", //желВоины
        "https://cdna.artstation.com/p/assets/images/images/016/959/634/large/steven-pabalinas-hunter-of-chogris.jpg?1554134219", //белыеШрамы
        "https://cdna.artstation.com/p/assets/images/images/030/575/228/large/wesley-gardner-ragnarblackmane-fanart.jpg?1601006603", //волки
        "https://cdna.artstation.com/p/assets/images/images/008/602/800/large/david-sondered-thelostsons-cover-davidsondered-preview2notitles.jpg?1513846985", //импКулаки
        "https://cdnb.artstation.com/p/assets/images/images/006/877/709/large/igor-sid-17-konrx-curze.jpg?1501924141", //повНочи
        "https://cdna.artstation.com/p/assets/images/images/029/063/820/large/l-j-koh-sanguinius-new-to-stop-stealing.jpg?1596352740", //кровАнгелы
        "https://cdnb.artstation.com/p/assets/images/images/031/062/175/large/cristian-alias-commission-wolf-color-x.jpg?1602497402", //железноРукие
        "https://cdna.artstation.com/p/assets/images/images/008/438/922/large/ruslan-korovkin-.jpg?1512765831", //пожМиров
        "https://cdna.artstation.com/p/assets/images/images/006/410/992/medium/miguel-iglesias-spacemarineafterbattle.jpg?1498406910", //ультрамарины
        "https://cdna.artstation.com/p/assets/images/images/026/389/310/large/yos-bayupratama-legio-xiv-by-celeng-d7rhajs-fullview.jpg?1588653970", //гвСмерти
        "https://cdna.artstation.com/p/assets/images/images/009/607/748/large/johan-grenier-gw-quarter-page06.jpg?1519915662", //тысячаСынов
        "https://cdnb.artstation.com/p/assets/images/images/016/244/197/large/denis-kornev-horus-heresy.jpg?1551441108", //сыныХоруса
        "https://cdnb.artstation.com/p/assets/images/images/036/226/293/large/elijah-arhpriest-lorgar.jpg?1617092693", //несущиеСлово
        "https://cdna.artstation.com/p/assets/images/images/033/050/512/large/joacim-holm-pyroas.jpg?1608235657", //саламандры
        "https://cdna.artstation.com/p/assets/images/images/001/487/626/large/johan-grenier-ravenguard-web03.jpg?1447273901", //гвардияВорона
        "https://cdna.artstation.com/p/assets/images/images/031/435/084/large/david-sondered-martin-al-web.jpg?1603634022" //альфа
    ]
    
    // MARK: Primarchs' Data
        let primarchNames = [
        "Lion El'Jonson", "Fulgrim", "Perturabo", "Jaghatai_Khan",
        "Leman_Russ", "Rogal_Dorn", "Konrad_Curze", "Sanguinius",
        "Ferrus_Manus", "Angron", "Roboute_Guilliman", "Mortarion",
        "Magnus_the_Red", "Horus_Lupercal", "Lorgar", "Vulcan",
        "Corvus_Corax", "Alpharius"
    ]
    
    let statusPosition = [
        "Loyal – K.O.", "HERESY\nDemon-Prince of Slaanesh","HERESY – N/A",
        "Loyal – N/A", "Loyal – Lost Signal", "Loyal – K.O.",
        "HERESY – <Target_terminated>", "Loyal – K.O.", "Loyal – K.O.",
        "HERESY\nDemon-Prince of Kchorne", "Loyal – Guard", "HERESY\nDemon-Prince of Nurgle",
        "HERESY\nDemon-Prince of Tzeentch", "HERESY – <Target_terminated>", "HERESY – N/A",
        "Loyal – Lost Signal", "Loyal – N/A", "HERESY – <Target_terminated>?"
    ]
    
    let planetList = [
        "Kaliban\n<Destroyed>", "Kemos\n<Exterminatus_Confirmed>", "Olimpia\n<Exterminatus_Confirmed>",
        "Chogoris", "Fenris", "Inwit", "Nostramo\n<Exterminatus_Confirmed>",
        "Gaal", "Medusa", "Nuceria\n<Destroyed>",
        "Macragge\nUltramar - Segmentum Ultima", "Barbarus\n<Exterminatus_Confirmed>", "Prosperro\n<Destroyed>",
        "Chthonia\n<Exterminatus_Confirmed>", "Monarchy\n<Exterminatus_Confirmed>", "Nocturne",
        "Lucaes", "<No_Information>"
    ]
    
    let urlsChaos = [
        "https://cdna.artstation.com/p/assets/images/images/027/130/892/large/klaher-baklaher-tzeench.jpg?1590677922", // Тзинч
        "https://cdna.artstation.com/p/assets/images/images/027/130/922/large/klaher-baklaher-khorn.jpg?1590677976", //Кхорн
        "https://cdna.artstation.com/p/assets/images/images/027/130/888/large/klaher-baklaher-nurgle.jpg?1590677913", //Нургл
        "https://cdna.artstation.com/p/assets/images/images/027/130/890/large/klaher-baklaher-slanesh.jpg?1590677918", //Слаанеш
    ]
    
    private init() {}
    
}
