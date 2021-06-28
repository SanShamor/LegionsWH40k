//
//  TabBarViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class TabBarVC: UITabBarController {

    var legion: Legion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: legion)
    }
    private func setupViewControllers(with legion: Legion) {
        let legionDetailVC = viewControllers?.first as! LegionDetailVC
        let primarchDetailVC = viewControllers?.last as! PrimarchDetailVC
        
        legionDetailVC.legion = legion
        primarchDetailVC.primarch = legion.primarch
    }
   
    @IBAction func galleryBarButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "gallerySegue", sender: nil)
    }
    
}
