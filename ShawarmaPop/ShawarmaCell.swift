//
//  ShawarmaCell.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

class ShawarmaCell: UICollectionViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    
    var shawarma: Shawarma!
    
    func configureCell(shawarma: Shawarma){
        self.shawarma = shawarma
        mainImg.image = UIImage(named: shawarma.proteinID.rawValue)
        mainLbl.text = shawarma.productName
    }
}
