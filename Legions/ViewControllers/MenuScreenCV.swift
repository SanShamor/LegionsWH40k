//
//  CollectionView.swift
//  Legions
//
//  Created by Александр on 28.05.2021.
//

import UIKit

enum UserActions: String, CaseIterable {
    case astartes = "Legiones Astartes"
    case mechanicus = "Adeptus Mechanicus"
    case chaos = "Chaos"
    case exampleThree = "Test"
}

class MenuScreenCV: UICollectionViewController {
    
    private let userActions = UserActions.allCases
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        userActions.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCell
        cell.userActionLabel.text = userActions[indexPath.item].rawValue
        return cell
        
    }
    
    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let userAction = userActions[indexPath.item]
        
        switch userAction {
        case .astartes:
            performSegue(withIdentifier: "astartesSegue", sender: nil)
        case .mechanicus:
            performSegue(withIdentifier: "mechanicusSegue", sender: nil)
        case .chaos:
            performSegue(withIdentifier: "chaosSegue", sender: nil)
        case .exampleThree:
            performSegue(withIdentifier: "redVC", sender: nil)
        }
        
    }
}

extension MenuScreenCV: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 60, height: 60)
    }
}
