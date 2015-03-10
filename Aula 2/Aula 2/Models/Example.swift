//
//  Example.swift
//  Aula 2
//
//  Created by Fernando Nazario Sousa on 3/5/15.
//  Copyright (c) 2015 Moip Pagamentos. All rights reserved.
//

import Foundation

protocol ExampleDelegate {
    func fullnameIsValid(success:Bool)
}

public class Example {
    
    var delegate:ExampleDelegate?

    public init() { }
    
    func validateFullname(fullname:String) {
        
        //async task 
        
        
        if fullname == "Fernando Nazario Sousa" {
            delegate!.fullnameIsValid(true)
        } else {
            delegate!.fullnameIsValid(false)
        }
    }
    
}