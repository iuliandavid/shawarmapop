//
//  DataService.swift
//  ShawarmaPop
//
//  Created by iulian david on 11/19/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import Foundation

/** Defining the protocol*/
protocol DataServiceDelegate: class {
    func shawarmasLoaded()
    
}

/**
 
 Singleton for this app
 
 All the data manipulation will be done through this class
 */
class DataService {
    
    //Defining the Singleton
    static let instance = DataService()
    
    //adding the delegate
    var delegate:DataServiceDelegate?
    
    //initialize the shawarmas as an empty array
    var shawarmas: Array<Shawarma> = []
    
    
    /**
     loading the data
     This could as easily be done through accesses to an API
    */
    func  loadShawarmas() {
        //Chicken Shawarmas
        shawarmas.append(Shawarma(id: 1, productName: "Loaded Flour Chicken Shawarma", wrapperID: 1, proteinID: 2, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Loaded GlutenFree Chicken Shawarma", wrapperID: 2, proteinID: 2, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Plain Flour Chicken Shawarma", wrapperID: 1, proteinID: 2, condimentID: 2))
        shawarmas.append(Shawarma(id: 1, productName: "Plain GlutenFree Chicken Shawarma", wrapperID: 2, proteinID: 2, condimentID: 2))
        
        //Beef Shawarmas
        shawarmas.append(Shawarma(id: 1, productName: "Loaded Flour Beef Shawarma", wrapperID: 1, proteinID: 1, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Loaded GlutenFree Beef Shawarma", wrapperID: 2, proteinID: 1, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Plain Flour Beef Shawarma", wrapperID: 1, proteinID: 1, condimentID: 2))
        shawarmas.append(Shawarma(id: 1, productName: "Plain GlutenFree Beef Shawarma", wrapperID: 2, proteinID: 1, condimentID: 2))
        
        //Lamb Shawarmas
        shawarmas.append(Shawarma(id: 1, productName: "Loaded Flour Lamb Shawarma", wrapperID: 1, proteinID: 3, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Loaded GlutenFree Lamb Shawarma", wrapperID: 2, proteinID: 3, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Plain Flour Lamb Shawarma", wrapperID: 1, proteinID: 3, condimentID: 2))
        shawarmas.append(Shawarma(id: 1, productName: "Plain GlutenFree Lamb Shawarma", wrapperID: 2, proteinID: 3, condimentID: 2))
        
        
        //Falafel Shawarmas
        shawarmas.append(Shawarma(id: 1, productName: "Loaded Flour Falafel Shawarma", wrapperID: 1, proteinID: 4, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Loaded GlutenFree Falafel Shawarma", wrapperID: 2, proteinID: 4, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Plain Flour Falafel Shawarma", wrapperID: 1, proteinID: 4, condimentID: 2))
        shawarmas.append(Shawarma(id: 1, productName: "Plain GlutenFree Falafel Shawarma", wrapperID: 2, proteinID: 4, condimentID: 2))
        
        
        //Pork Shawarmas
        shawarmas.append(Shawarma(id: 1, productName: "Loaded Flour Pork Shawarma", wrapperID: 1, proteinID: 5, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Loaded GlutenFree Pork Shawarma", wrapperID: 2, proteinID: 5, condimentID: 1))
        shawarmas.append(Shawarma(id: 1, productName: "Plain Flour Pork Shawarma", wrapperID: 1, proteinID: 5, condimentID: 2))
        shawarmas.append(Shawarma(id: 1, productName: "Plain GlutenFree Pork Shawarma", wrapperID: 2, proteinID: 5, condimentID: 2))
        
        delegate?.shawarmasLoaded()
    }
    
   
    
}
