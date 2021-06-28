//
//  PrimarchWeb.swift
//  Legions
//
//  Created by Александр on 07.06.2021.
//

import UIKit
import WebKit

class PrimarchWiki: UIViewController {
    
    var primarchData: Primarch!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doRequestToWiki()
    }
    
    private func doRequestToWiki(){
        var link = "https://warhammer40k.fandom.com/wiki/\(primarchData.name)"
        if primarchData.name == "Lion El'Jonson" {
            link = "https://warhammer40k.fandom.com/wiki/Lion_El%27Jonson"
        }
        guard let url = URL(string: link) else { return }
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
    
}
