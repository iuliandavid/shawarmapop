//
//  NibLoadableView.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

///Used for nib loading
///Every class that will extend this view will itself have the reuseIdentifier init
protocol NibLoadableView: class {}

extension NibLoadableView where Self:UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}
