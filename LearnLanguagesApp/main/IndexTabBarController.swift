//
//  indexNavigationViewController.swift
//  LearnLanguagesApp
//
//  Created by Ronald Edgardo Ramirez Diaz on 5/4/16.
//  Copyright © 2016 FutbolWin. All rights reserved.
//

import UIKit

class IndexTabBarController: UITabBarController {

    let futbolWinColors = FutbolWinStyleColors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        setNavigationBarProperties()
    }
    
    func setNavigationBarProperties() {
        navigationController?.navigationBar.barTintColor = futbolWinColors.futbolWinBackgroundColor
        navigationController?.navigationBar.tintColor = futbolWinColors.futbolWinTitleFontColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: futbolWinColors.futbolWinTitleFontColor]
        
        let tabImage = UIImage(named: "TranspWin6%.png")
        let imageView = UIImageView(image: tabImage)
        imageView.contentMode = .ScaleToFill
        self.navigationItem.titleView = imageView
        
        self.tabBar.barTintColor = futbolWinColors.futbolWinBackgroundColor
        self.tabBar.tintColor = futbolWinColors.futbolWinTitleFontColor
    }
    
    
}
