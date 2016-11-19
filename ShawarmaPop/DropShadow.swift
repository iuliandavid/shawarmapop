//
//  DropShadow.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

protocol DropShadow {}

//Constrain the Protocol to a certain Type
//Just like with the generics
extension DropShadow where Self: UIView {
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5.0
    }
}
