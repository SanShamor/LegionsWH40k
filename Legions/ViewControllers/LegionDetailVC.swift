//
//  LegionDetailsViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class LegionDetailVC: UIViewController {
    
    @IBOutlet weak var emblemImageView: UIImageView!
    @IBOutlet weak var armorImageView: UIImageView!
    @IBOutlet weak var primarchLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var legion: Legion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLAvelAndLogo()
        loadDataFromFirebase(legion: legion)
    }
    
    private func setLAvelAndLogo() {
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        emblemImageView.image = UIImage(named: legion.number)
        primarchLabel.text = "Legion:\n\(legion.name)"
    }
    
    private func loadDataFromFirebase(legion: Legion) {
        armorImageView.image = UIImage(named: "LogoFinal.jpg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        DispatchQueue.global().async {
            APIManager.shared.getImagePrimarch(
                collectionName: "legions",
                picName: legion.number,
                completion: { pic in
                    DispatchQueue.main.async {
                        self.armorImageView.image = pic
                        self.activityIndicator.stopAnimating()
                        self.activityIndicator.isHidden = true
                    }
                }
            )
        }
    }
    
}
