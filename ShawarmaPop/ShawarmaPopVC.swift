//
//  ViewController.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/18/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

class ShawarmaPopVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //defining the DataService instance as a class variable
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let img = UIImage(named: "\(Protein.Chicken.rawValue)")
        print(img.debugDescription)
        //load the data
        ds.delegate = self
        ds.loadShawarmas()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
        
        //old school way
        let nib = UINib(nibName: kReusableCellName, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: kReusableCellName)
    }

    func shawarmasLoaded() {
        print("Data loaded")
    }

}

/** Use extension instead of direct implementing the protocols in the main class */
extension ShawarmaPopVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.shawarmas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //old school way
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kReusableCellName, for: indexPath) as? ShawarmaCell {
            let shawarma = ds.shawarmas[indexPath.row]
            cell.configureCell(shawarma: shawarma)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: 105)
    }
}
