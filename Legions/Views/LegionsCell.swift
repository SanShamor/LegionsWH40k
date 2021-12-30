//
//  LegionsCell.swift
//  Legions
//
//  Created by Александр on 28.12.2021.
//

import UIKit

class LegionsCell: UITableViewCell {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLegionLabel: UILabel!
    @IBOutlet weak var numberLegionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configureCell(legion: Legion) {
        nameLegionLabel.text = legion.name
        numberLegionLabel.text = legion.number
        logoImageView.image = UIImage(named: legion.number)
        
        switch traitCollection.userInterfaceStyle {
        case .dark:
            viewCell.backgroundColor = .black
            nameLegionLabel.textColor = .white
            numberLegionLabel.textColor = .gray
        default:
            viewCell.backgroundColor = .white
            nameLegionLabel.textColor = .black
            numberLegionLabel.textColor = .black
        }
    }
    
}
