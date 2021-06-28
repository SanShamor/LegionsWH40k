//
//  MechanicusViewController.swift
//  Legions
//
//  Created by Александр on 07.06.2021.
//

import UIKit
import WebKit

class MechanicusVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doRequestToWiki()
    }
    
    private func doRequestToWiki() {
        guard let url = URL(string: "https://warhammer40k.fandom.com/wiki/Adeptus_Mechanicus") else { return }
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
    
}
