//
//  ViewController.swift
//  LearnLanguagesApp
//
//  Created by Ronald Edgardo Ramirez Diaz on 5/3/16.
//  Copyright © 2016 FutbolWin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signinAction(sender: AnyObject) {
        print("Da click '\(userTextField.text!)' en Ingresar!!!")
        self.performSegueWithIdentifier("goToIndexSegue", sender: self)
        
    }
    
    @IBAction func signupAction(sender: AnyObject) {
        print("Da click '\(userTextField.text!)' en Registrarse!!!")
        
    }
    

}

