//
//  LegionDetailsViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class LegionDetailsViewController: UIViewController {

    var legion: Legion!
    
    @IBOutlet weak var emblemImageView: UIImageView!
    @IBOutlet weak var armorImageView: UIImageView!
    @IBOutlet weak var primarchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emblemImageView.image = UIImage(named: legion.number)
        armorImageView.image = UIImage(named: legion.name)
        
        primarchLabel.text = "Primarch:\n\(legion.primarch.name)"
    }
    
    

    

}
