//
//  Shakeable.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

protocol Shakeable {}


extension Shakeable where Self:UICollectionViewCell {
    
    func shake() {
        
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.1
        anim.repeatCount = 10
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}
