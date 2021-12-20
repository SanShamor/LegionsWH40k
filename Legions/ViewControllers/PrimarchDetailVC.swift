//
//  PrimarchDetailViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class PrimarchDetailVC: UIViewController {
    
    @IBOutlet weak var primarchImage: UIImageView!
    @IBOutlet weak var primarchNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var planetLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var legion: Legion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        loadDataFromFirebase(primarch: legion.primarch)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let legionDetailsVC = segue.destination as? PrimarchWiki else { return }
        legionDetailsVC.legion = sender as? Legion
    }
    
    @IBAction func moreButtonPressed() {
        performSegue(withIdentifier: "primarchWebSegue", sender: legion)
    }
    
    private func loadDataFromFirebase(primarch: String) {
        primarchImage.image = UIImage(named: "LogoFinal.jpg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        APIManager.shared.getPostPrimarch(collection: "primarch", docName: primarch, completion: {doc in
            guard doc != nil else { return }
            self.primarchNameLabel.text = "\(doc?.name ?? "N/A")"
            self.statusLabel.text = "Status- \(doc?.status ?? "N/A")"
            self.planetLabel.text = "Planet- \(doc?.planet ?? "N/A")"
        })
        
        DispatchQueue.global().async {
            APIManager.shared.getImagePrimarch(
                collectionName: "legions",
                picName: primarch,
                completion: { pic in
                    DispatchQueue.main.async {
                        self.primarchImage.image = pic
                        self.activityIndicator.stopAnimating()
                        self.activityIndicator.isHidden = true
                    }
                }
            )
        }
    }
    
}
