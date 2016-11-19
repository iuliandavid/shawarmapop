//
//  ViewController.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/18/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

class ShawarmaPopVC: UIViewController {

    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addDropShadow()
    }

    

}

