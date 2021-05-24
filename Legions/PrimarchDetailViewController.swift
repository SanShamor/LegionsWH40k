//
//  PrimarchDetailViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class PrimarchDetailViewController: UIViewController {

    @IBOutlet weak var primarchImage: UIImageView!
    
    var primarch: Primarch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primarchImage.image = UIImage(named: primarch.name)
    }
    

}
