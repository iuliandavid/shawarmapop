//
//  Shawarma.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//



/// The data model for this app
/// Struct will be used since we do not need references, we need to pass them as copies
/// Ingredients for the shawarma will be defined as enums:
/// enum Wrapper - defining the wrapper of the shawarma
/// enum Protein - defining the protein used in shawarma, meat or falafel
/// enum Condiment - types of condiments

import Foundation


/**
 # Protein
 */
enum Protein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Lamb = "Lamb"
    case Falafel = "Falafel"
    case Pork = "Pork"
    case UNAVAILABLE = "UNAVAILABLE"
    
    static func build(_ id: Int) -> Protein {
        switch id {
        case 1:
            return Protein.Beef
        case 2:
            return Protein.Chicken
        case 3:
            return Protein.Lamb
        case 4:
            return Protein.Falafel
        case 5:
            return Protein.Pork
        default:
            return Protein.UNAVAILABLE
        }
    }
    
}

enum Wrapper: Int {
    case Flour = 1
    case GlutenFree = 2
}



enum Condiment: Int {
    case Loaded = 1
    case Plain = 2
}


/**
 Definition of the Shawarma
 
 - Variable id(Int): Unique indentifier
 - Variable productName(String): Name
 - Variable proteinID: reference to the type of Protein used
 - Variable wrapperID: reference to the type of Wrapper used
 - Variable condimentId: reference to the type of Condiment used
 */
struct Shawarma {
    
    private var _id: Int!
    private var _productName: String!
    private var _proteinID: Protein!
    private var _wrapperID: Wrapper!
    private var _condimentID: Condiment!
    
    //Getters
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var proteinID: Protein {
        return _proteinID
    }
    
    var wrapperID: Wrapper {
        return _wrapperID
    }
    
    var condimentId: Condiment {
        return _condimentID
    }
    
    init(id: Int, productName: String, wrapperID: Int, proteinID: Int, condimentID: Int) {
        self._id = id
        self._productName = productName
        self._wrapperID = Wrapper(rawValue: wrapperID)
        self._proteinID = Protein.build(proteinID)
        self._condimentID = Condiment(rawValue: condimentID)
    }
    
}
