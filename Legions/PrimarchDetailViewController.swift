//
//  PrimarchDetailViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class PrimarchDetailViewController: UIViewController {

    @IBOutlet weak var primarchImage: UIImageView!
    @IBOutlet weak var primarchNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var planetLabel: UILabel!
    
    var primarch: Primarch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primarchInfo()
    }
    
    private func primarchInfo() {
        primarchNameLabel.text = primarch.name
        statusLabel.text = "status: \(primarch.status)"
        planetLabel.text = "planet: \(primarch.planet)"
        primarchImage.image = UIImage(named: primarch.name)
    }
}
