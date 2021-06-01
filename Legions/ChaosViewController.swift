//
//  ChaosViewController.swift
//  Legions
//
//  Created by Александр on 28.05.2021.
//

import UIKit

class ChaosViewController: UIViewController {
    
    @IBOutlet weak var godsImageView: UIImageView!
    @IBOutlet weak var godsDiscriptionLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private var gods = ChaosGod.getGodsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData(index: 0)
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
    }
    
    private func reloadData(index: Int) {
        let god = gods[index]
        
        getPicture(url: god.urlPhoto)
        godsDiscriptionLabel.text = god.discription
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
    
    @IBAction func choiseGodSegment(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            reloadData(index: sender.selectedSegmentIndex)
        case 1:
            reloadData(index: sender.selectedSegmentIndex)

        case 2:
            reloadData(index: sender.selectedSegmentIndex)

        default:
            reloadData(index: sender.selectedSegmentIndex)

        }
    }
    
    @IBAction func galleryBarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "gallerySegue", sender: nil)
    }
    
    
}
