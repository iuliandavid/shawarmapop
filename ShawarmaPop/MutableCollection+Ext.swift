//
//  MutableCollection+Ext.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import Foundation

/**
 Extending the collection to be random
 We extend only those collections that use an Index of Int
 E.g. Arrays
 */
extension MutableCollection where Index == Int{
    
    mutating func shuffle() {
        if count < 2 {
            return
        }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else {
                continue
            }
            swap(&self[i], &self[j])
            
        }
    }
}
