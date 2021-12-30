//
//  ViewCell.swift
//  Legions
//
//  Created by Александр on 28.05.2021.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var userActionLabel: UILabel!
    @IBOutlet weak var viewBackground: UIView!
    
    func configureTheme() {
        switch traitCollection.userInterfaceStyle {
        case .dark:
            viewBackground.backgroundColor = .darkGray
            userActionLabel.textColor = .white
        default:
            viewBackground.backgroundColor = .black
            userActionLabel.textColor = .white
        }
    }
    
}
