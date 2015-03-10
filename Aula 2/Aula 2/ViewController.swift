//
//  ViewController.swift
//  Aula 2
//
//  Created by Fernando Nazario Sousa on 3/5/15.
//  Copyright (c) 2015 Moip Pagamentos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, ExampleDelegate {

    @IBOutlet weak var txtFullname: UITextField!

    // MARK: Life cicle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    @IBAction func btnVerifyTouched(sender: AnyObject) {
        
        var example = Example()
        example.delegate = self //ViewDelegates()
        example.validateFullname(txtFullname.text)
    }
    
    // MARK: Delegates
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if !textField.text.isEmpty {
            btnVerifyTouched(self)
        }
        
        return true
    }
    
    func fullnameIsValid(success: Bool) {
        println(success)
    }
    
    // MARK: UI Methods
    
    // MARK: Other Methods
}

