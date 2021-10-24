//
//  PrimarchWeb.swift
//  Legions
//
//  Created by Александр on 07.06.2021.
//

import UIKit
import WebKit

class PrimarchWiki: UIViewController {
    
    var legion: Legion!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doRequestToWiki()
    }
    
    private func doRequestToWiki(){
        let link = "https://warhammer40k.fandom.com/wiki/\(legion.primarch)"
        
        guard let url = URL(string: link) else { return }
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
    
}
