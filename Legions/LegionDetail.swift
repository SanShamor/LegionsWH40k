//
//  LegionDetailsViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class LegionDetail: UIViewController {
    
    var legion: Legion!
    
    @IBOutlet weak var emblemImageView: UIImageView!
    @IBOutlet weak var armorImageView: UIImageView!
    @IBOutlet weak var primarchLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        
        emblemImageView.image = UIImage(named: legion.number)
        getPicture()
        
        primarchLabel.text = "Primarch:\n\(legion.primarch.name)"
    }
    
    private func getPicture() {
        guard let url = URL(string: legion.urlPhoto ?? "") else { return }
        
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: url) else { return }
            
            DispatchQueue.main.async {
                self.armorImageView.image = UIImage(data: imageData)
                self.activityIndicator.stopAnimating()
            }
            
        }
    }
    
}
