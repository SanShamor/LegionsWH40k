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
        "XV", "XVI", "XVII", "XVIII",
        "XIX", "XX"
    ]
    
    let primarchNames = [
        "Lion El'Jonson", "Fulgrim", "Perturabo", "Jaghatai_Khan",
        "Leman_Russ", "Rogal_Dorn", "Konrad_Curze", "Sanguinius",
        "Ferrus_Manus", "Angron", "Roboute_Guilliman", "Mortarion",
        "Magnus_the_Red", "Horus_Lupercal", "Lorgar", "Vulcan",
        "Corvus_Corax", "Alpharius"
    ]
    
    let chaosGods = [
        "Tzeentch, also known as the Changer of Ways, and the Architect of Fate, is the Chaos God of change, evolution, intrigue and sorcery. Tzeentch is especially empowered by the desire for change and ambition for advancement among mortals. It is he who weaves the threads that connect every action, plot and subtle intrigue in a galaxy-wide game of manipulation and subterfuge.\n\nAt the end of each of these threads lays the ensnared soul of a human puppet; those of his mortal servants and agents who believe they serve the Lord of Sorcery in mutually beneficial pacts.\n\nThe truth is that Tzeentch's every action is planned with its ultimate goal as his own establishment as the pre-eminent Chaos power in the Warp. Of course, the very nature of the Lord of Entropy is such that, were he to attain this triumph, he would still strive for turmoil and change. In many ways, Tzeentch is both the best and least understood of the Dark Gods.\n\nHe is the god of fate, plots, and schemes, as well as the god that exemplifies the ever-changing nature of the Warp. However, Tzeentch does not plot towards some end (at least none that can be comprehended); he schemes simply to scheme. He is constantly building, even as his devices unravel under their own complexity. At the same time, he is the god of knowledge and comprehension, and his devotees may be those who seek a deeper understanding of an often enigmatic universe.",
        "Khorne, also called the Blood God and the Lord of Skulls, is the Chaos God of blood, war and murder. Its domain covers the most basic and brutal of sentient emotions and actions, such as hate, anger, rage, war and killing.\n\nEvery act of killing or murder in the material universe feeds and empowers Khorne; the more senseless and destructive, the better. However, though Khorne is the god of bloody slaughter, it is also the god of martial pride and honour, of those who set themselves against the most dangerous foes and earn victory against the odds.\n\nA devotee of Khorne is as likely to be an honourable champion in combat as a blood-crazed slaughterer. Khornates take no artful approach to killing, seeking only to slay rather than to inflict pain, because while the blood and death of their victims strengthens Khorne, their suffering actually empowers its nemesis Slaanesh.",
        "Nurgle is known also as Grandfather Nurgle, the Lord of Pestilence. It is the third of the Chaos Gods to fully awake within the Warp, emerging during the 2nd Millennium in the midst of Terra's European Middle Ages, as great plagues swept across the world heralding the god's birth.\n\nNurgle is the Chaos God most directly involved with the plights of mortals, particularly humans who suffer so acutely from a fear of death, perhaps the oldest fear of that species, or any other. While Nurgle is the god of death and decay, it is also the god of rebirth. Decay is simply one part of the cycle of life, without which no new life could grow. In the same way, Nurgle is also the god of perseverance and survival.\n\nWhile those who wish to spread decay and corruption are certainly amongst its followers, there are also those who wish to endure, to become resilient enough to handle the difficulties and opportunities presented by an uncaring universe. Many of those affected by Nurgle's poxes usually turn to it in order to escape the pain and sheer despair caused by sickness and disease.\n\nNurgle is the Great Lord of Decay and the Master of Plague and Pestilence. All things, no matter how solid and permanent they seem, are liable to eventual corruption and death. Even the process of creation is but the precursor to destruction and decay. The bastion of today is tomorrow's ruin, the maiden of the morning is the crone of the night, and the hope of a moment is but the foundation of regret.",
        "Slaanesh, also known as the Dark Prince, the Prince of Pleasure, the Lord of Excess, the Perfect Prince, and even the Prince of Chaos in the Imperium of Man, is the Chaos God of pleasure, excess and decadence. Lust, pride and self-indulgence are the hallmarks of all who follow it.\n\nSlaanesh is the youngest of the four major Chaos Gods, having come to full sentience within the Immaterium only during the 30th Millennium. While generally referred to as by Humans and as a female by the Aeldari, Slaanesh is actually neither gender, combining characteristics of both and perfecting them.\n\nSlaanesh typically appears in an androgynous form in which it is a woman on the right side and a man on the left with two sets of devilish horns growing from its head. Slaanesh can assume any physical form; male, female, both at the same time or no gender at all, but it prefers male bodies. Its sacred number is six and the colours associated with Slaanesh are purple, pink and black.\n\nThe name Slaanesh is a corruption of the Aeldari term Slaaneth, though ironically, the Aeldari refer to this foul entity only as Sai'lanthresh, She Who Thirsts."
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
    
    private init() {}
}
