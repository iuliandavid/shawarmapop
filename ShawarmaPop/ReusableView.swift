//
//  ReusableView.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

///Used for adding the cellReusableIndentifier
///Every class that will extend this view will itself have the reuseIdentifier init
protocol ReusableView: class {}

extension ReusableView where Self:UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
