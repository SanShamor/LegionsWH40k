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
        "Lion El'Jonson", "Fulgrim", "Perturabo", "Jaghatai Khan",
        "Leman Russ", "Rogal Dorn", "Konrad Curze", "Sanguinius",
        "Ferrus Manus", "Angron", "Roboute Guilliman", "Mortarion",
        "Magnus The Red", "Horus Lupercal", "Lorgar", "Vulcan",
        "Corvus Corax", "Alpharius"
    ]
    
    let chaosGods = [
        "Бог Хаоса, олицетворяющий изменения и колдовство. Этот Бог направляет постоянные мутации и сложные интриги. С большим интересом он прислушивается к мечтам и надеждам всего живого и активно вмешивается в происходящее, чтобы исполнить свои собственные, невероятно сложные планы, в которых всё взаимосвязано.\nТзинч черпает силу из страсти к переменам, свойственной смертным существам: большинство разумных видов имеют представление о стремлении к лучшему. Мечты в любых их формах, желание или стремление изменить что-либо в жизни делают его сильнее. \n\nКак и других Богов Хаоса, Тзинча весьма привлекают люди с их могуществом и стойкостью духа: нет в Галактике разумного вида, столь же непостоянного и амбициозного. Искра желания изменить реальность может запалить огонь, охватывающий страны и миры, и в итоге может поменять судьбу всей Галактики.Магия — это область, управляемая Изменяющим Пути, поскольку она есть способ управления действительностью через усилия воли. Тзинч — величайший волшебник во всём Варпе. Многие из тех, кто идёт за ним — волшебники, и многие другие получают колдовской дар в качестве награды за свои действия. Демонические воплощения Тзинча также по сути своей являются магическими, а не телесными созданиями.",
        "Бог Хаоса, покровительствующий силе, ненависти и войне. Он — бог ярости, жестокости и ненависти. В настоящее время, по мере хода Великой Игры, Кхорн является сильнейшим из Богов. Он пробудился вторым, во времена Средневековья Терры. Каждый акт насилия и жестокости, неважно, со стороны ли его последователей или врагов, делает Кхорна сильнее.\n\n Кхорн — Бог Хаоса, который вступил в полную мощь в эпоху средневековья на Терре. Кхорн и его последователи презирают использование магии и является противником Тзинча. Однако, настоящей его противоположностью является Слаанеш, который олицетворяет противоположный аспект Хаоса. Кхорн считает Слаанеш слабым богом, не имеющим воинской чести и гордости.\nКхорн изображается как могучее человекоподобное существо, сидящее на огромной горе из черепов, собранных его Чемпионами и последователями, а также черепов убитых последователей, которая находится посреди озера крови. Черепа всех убитых Чемпионами Кхорна и всех павших Чемпионов добавляются к этой горе, поэтому она медленно растет все выше и выше.",
        "Из четырех богов Хаоса, Нургл приносит людям наибольший прямой вред. Те, кто страдают от серьезных болезней, часто обращаются к нему, надеясь избежать страданий. Физическое воплощение Нургла описывается как гигантское раздутое тело, покрытое прокаженной мертвой кожей.\nНургл также называется Повелителем Всего, так как все материальные вещи во вселенной подвержены разрушению.\n\nБоги Хаоса являются воплощениями надежд, страхов и других эмоций населяющий материальный мир существ. Нургл является порождением неизбежного страха перед смертью и болезнями, а также их подсознательный ответ на этот страх, «сила жизни», движущая сила человечества и других рас.\nНургл — основной противник Тзинча, Повелителя Изменения, так как получает свою силу из противоположных эмоций людей. Тзинч воплощает надежду и амбиции, в то время как Нургл повелевает отчаянием и безнадежностью.\n\nНургл и его демоны несмотря на свой отвратительный внешний вид, довольно общительны и дружелюбны по своему поведению. Его демонические служители и смертные последователи с радостью встречают моровые поветрия, которые он вызывает, принимают чуму как его подарки и крики своих жертв как благодарность. Это в полной мере получило свое выражение на Демоническом Мире Бубоникус, на котором бесконечная цепь сумасшедших охватывает экватор планеты в буйном веселье никогда не прекращающегося танца.",
        "Одно из четырех Божеств Хаоса, олицетворяющее похоть и гедонизм, пресыщение и избыток, радость и жадность. Слаанеш родилось последним из Богов Хаоса, в момент краха цивилизации Эльдар.\nСлаанеш является гермафродитом и изображается с женской правой и мужской левой половинами тела, с золотыми волосами. По этой причине имя Слаанеш не склоняется. Слаанеш также известен под именами Принц Хаоса, Принц Излишества, Принц Удовольствия и Лорд Наслаждения.\n\nИмя Слаанеш происходит от Слаанет (Slaaneth) — имени на языке Хаоса: Slaa — удовольствие, Neth — Лорд, Мастер или Принц; то есть, Лорд Удовольствия. Именование вещей, имеющий к нему отношение — Slaaneshi (или Слаанешиты).\nЕго священная цифра — шесть. Символ Слаанеш состоит из соединённых символов мужского и женского начала. Эльдары не произносят имени этого бога, упоминая его, как Та-Что-Жаждет, Та-Которая-Не-Названа, Великий Враг, Великий Змей, Голодная Сука и через другие наименования."
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
        "https://cdnb.artstation.com/p/assets/images/images/006/247/113/large/tobias-gotze-sm.jpg?1497104121", // темныtАнгелы
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
