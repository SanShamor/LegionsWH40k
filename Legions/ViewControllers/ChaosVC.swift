//
//  ChaosViewController.swift
//  Legions
//
//  Created by Александр on 28.05.2021.
//

import UIKit

class ChaosVC: UIViewController {
    
    @IBOutlet weak var godsImageView: UIImageView!
    @IBOutlet weak var godNamesLabel: UILabel!
    @IBOutlet weak var godDescriptionTextView: UITextView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDataFromFirebase(collection: "chaos", godName: "Tzeentch")
    }
    
    @IBAction func choiseGodSegment(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            loadDataFromFirebase(collection: "chaos", godName: "Tzeentch")
        case 1:
            loadDataFromFirebase(collection: "chaos", godName: "Khorne")
        case 2:
            loadDataFromFirebase(collection: "chaos", godName: "Nurgle")
        default:
            loadDataFromFirebase(collection: "chaos", godName: "Slaanesh")
        }
    }
    
    @IBAction func galleryBarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "gallerySegue", sender: nil)
    }
    
    private func loadDataFromFirebase(collection: String, godName: String) {
        godsImageView.image = UIImage(named: "LogoFinal.jpg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        APIManager.shared.getPost(collection: collection, docName: godName, completion: {doc in
            guard doc != nil else { return }
            self.godNamesLabel.text = doc?.names
            self.godDescriptionTextView.text = doc?.description
        })
        
        DispatchQueue.global().async {
            APIManager.shared.getImagePrimarch(collectionName: collection, picName: godName, completion: { pic in
                DispatchQueue.main.async {
                    self.godsImageView.image = pic
                    self.activityIndicator.stopAnimating()
                    self.activityIndicator.isHidden = true
                }
            })
        }
    }
    
}
