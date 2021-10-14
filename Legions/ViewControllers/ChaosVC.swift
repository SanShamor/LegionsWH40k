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
    
    private var gods = ChaosGod.getGodsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData(index: 0)
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
    }
    
    
    @IBAction func choiseGodSegment(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            loadDataFromFirebase(godName: "Tzeentch")
        case 1:
            loadDataFromFirebase(godName: "Khorne")
        case 2:
            loadDataFromFirebase(godName: "Nurgle")
        default:
            loadDataFromFirebase(godName: "Slaanesh")
        }
    }
    
    @IBAction func galleryBarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "gallerySegue", sender: nil)
    }
    
    private func loadDataFromFirebase(godName: String) {
        APIManager.shared.getPost(collection: "chaos", docName: godName, completion: {doc in
            guard doc != nil else { return }
            self.godNamesLabel.text = doc?.names
            self.godDescriptionTextView.text = doc?.description
        })
        APIManager.shared.getImage(picName: godName, completion: { pic in
            self.godsImageView.image = pic
        })
    }
    
    private func reloadData(index: Int) {
        let god = gods[index]
        
        getPicture(url: god.pictureLink)
        godNamesLabel.text = god.discription
    }
    
    private func getPicture(url: String!) {
        guard let url = URL(string: url  ?? "") else { return }
        
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: url) else { return }
            
            DispatchQueue.main.async {
                self.godsImageView.image = UIImage(data: imageData)
                self.activityIndicator.stopAnimating()
            }
            
        }
    }
}
