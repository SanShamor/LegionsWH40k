//
//  PrimarchWeb.swift
//  Legions
//
//  Created by Александр on 07.06.2021.
//

import UIKit
import WebKit

class PrimarchWeb: UIViewController {

    var primarchData: Primarch!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://warhammer40k.fandom.com/wiki/\(primarchData.name)")
        let request = URLRequest(url: url!)
        
        webView.load(request)
    }
    


}
