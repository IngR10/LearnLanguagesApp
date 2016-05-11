//
//  SchedulleTutorialMenuViewController.swift
//  LearnLanguagesApp
//
//  Created by Ronald Edgardo Ramirez Diaz on 5/10/16.
//  Copyright © 2016 FutbolWin. All rights reserved.
//

import UIKit

class SchedulleTutorialMenuViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clearColor()
        view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.7)    
    }
    
    
    @IBAction func cancelEvent(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}
