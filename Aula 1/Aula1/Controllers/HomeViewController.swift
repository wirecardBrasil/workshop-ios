//
//  ViewController.swift
//  Aula1
//
//  Created by Fernando Nazario Sousa on 3/3/15.
//  Copyright (c) 2015 Moip Pagamentos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLoginTouched(sender: AnyObject) {
        
        
        let actionLogin = UIAlertAction(title: "Sim", style: UIAlertActionStyle.Default) { (alertAct:UIAlertAction!) -> Void in
            println(alertAct.title)
        }
        
        
        let alertController = UIAlertController(title: "Login", message: "Você quer se conectar?", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(actionLogin)
        
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
}
