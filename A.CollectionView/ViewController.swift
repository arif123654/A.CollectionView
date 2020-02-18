//
//  ViewController.swift
//  A.CollectionView
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- Utilities
    var items = ["Burger","Guiter","Shrimp"]
    
    @IBOutlet weak var collectionVIewController: UICollectionView!
    
    
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionVIewController.delegate = self
        collectionVIewController.dataSource = self
        // Do any additional setup after loading the view.
    }


}

//MARK:- Collection View
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionVIewController.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.cellImageVIew.image = UIImage(named: items[indexPath.row])
        
        
        return cell
    }
    
    
    
    
    
}

