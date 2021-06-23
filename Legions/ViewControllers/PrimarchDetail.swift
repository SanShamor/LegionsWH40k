//
//  PrimarchDetailViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class PrimarchDetail: UIViewController {

    @IBOutlet weak var primarchImage: UIImageView!
    @IBOutlet weak var primarchNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var planetLabel: UILabel!
    
    var primarch: Primarch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primarchInfo()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let legionDetailsVC = segue.destination as? PrimarchWeb else { return }
        legionDetailsVC.primarchData = sender as? Primarch
    }
    
    @IBAction func moreButtonPressed() {
        performSegue(withIdentifier: "primarchWebSegue", sender: primarch)
    }
    private func primarchInfo() {
        primarchNameLabel.text = primarch.name
        statusLabel.text = "status: \(primarch.status)"
        planetLabel.text = "planet: \(primarch.planet)"
        primarchImage.image = UIImage(named: primarch.name)
    }
}
