//
//  APIManager.swift
//  Legions
//
//  Created by Александр on 14.10.2021.
//

import Foundation
import Foundation
import UIKit
import Firebase
import FirebaseStorage
import FirebaseDatabase

class APIManager {
    
    static let shared = APIManager()
    
    private func configureFB() -> Firestore {
        var db: Firestore!
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
        return db
    }
    
    func getPost(collection: String, docName: String, completion: @escaping (Chaos?) -> Void) {
        let db = configureFB()
        db.collection(collection).document(docName).getDocument(completion: { (document, error) in
            guard error == nil else { completion(nil); return }
            let doc = Chaos(names: document?.get("names") as! String, description: document?.get("description") as! String)
            completion(doc)
        })
    }
    
    func getImage(picName: String, completion: @escaping (UIImage) -> Void) {
        let storage = Storage.storage()
        let reference = storage.reference()
        let pathRef = reference.child("chaos")
        var image: UIImage = UIImage(named: "LogoFinal")!
        
        let fileRef = pathRef.child(picName + ".jpg")
        fileRef.getData(maxSize: 1024*1024, completion: { data, error in
            guard error == nil else { completion(image); return }
            image = UIImage(data: data!)!
            completion(image)
        })
    }
    
}
