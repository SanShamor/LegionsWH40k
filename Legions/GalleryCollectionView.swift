//
//  GalleryCollectionView.swift
//  Legions
//
//  Created by Александр on 31.05.2021.
//

import UIKit


class GalleryCollectionView: UICollectionViewController {
    
    var linksPhoto = DataManager.shared.urlsAstartes + DataManager.shared.urlsChaos
   
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailPhoto" {
            let photoVC = segue.destination as! PhotoDetailViewController
            let cell = sender as! GalleryCell
            photoVC.image = cell.imageGallery.image
        }
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return linksPhoto.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gallery", for: indexPath) as! GalleryCell
                
        guard let url = URL(string: linksPhoto[indexPath.item] ) else { return cell }

        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: url) else { return }

            DispatchQueue.main.async {
                cell.imageGallery.image = UIImage(data: imageData)
            }

        }
        return cell
    }


    
}

extension GalleryCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}



