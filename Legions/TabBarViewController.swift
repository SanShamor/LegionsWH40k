//
//  TabBarViewController.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    var legion: Legion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: legion)
    }
    private func setupViewControllers(with legion: Legion) {
        let legionDetailVC = viewControllers?.first as! LegionDetailsViewController
        let primarchDetailVC = viewControllers?.last as! PrimarchDetailViewController
        
        legionDetailVC.legion = legion
        primarchDetailVC.primarch = legion.primarch
    }

}
