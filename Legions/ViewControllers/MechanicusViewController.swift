//
//  MechanicusViewController.swift
//  Legions
//
//  Created by Александр on 07.06.2021.
//

import UIKit
import WebKit

class MechanicusViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://warhammer40k.fandom.com/wiki/Adeptus_Mechanicus")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
    }
    

}
