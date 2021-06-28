//
//  PhotoDetailViewController.swift
//  Legions
//
//  Created by Александр on 01.06.2021.
//

import UIKit

class PictureDetailVC: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Done")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
    
}
