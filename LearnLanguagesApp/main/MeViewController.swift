//
//  MeViewController.swift
//  LearnLanguagesApp
//
//  Created by Ronald Edgardo Ramirez Diaz on 5/5/16.
//  Copyright © 2016 FutbolWin. All rights reserved.
//

import UIKit


class MeViewController : ViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "meCell"
    var items: [MeHistory] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        populateItems()
    }
    
    func populateItems() {
        
        let history1 = MeHistory()
        history1.photo = UIImage(named: "TranspWin6%.png")
        history1.title = "---"
        history1.description1 = "---"
        history1.description2 = "---"
        
        let history2 = MeHistory()
        history2.photo = UIImage(named: "TranspWin6%.png")
        history2.title = "---"
        history2.description1 = "---"
        history2.description2 = "---"
        
        let history3 = MeHistory()
        history3.photo = UIImage(named: "TranspWin6%.png")
        history3.title = "---"
        history3.description1 = "---"
        history3.description2 = "---"
        
        let history4 = MeHistory()
        history4.photo = UIImage(named: "TranspWin6%.png")
        history4.title = "---"
        history4.description1 = "---"
        history4.description2 = "---"
        
        let history5 = MeHistory()
        history5.photo = UIImage(named: "TranspWin6%.png")
        history5.title = "---"
        history5.description1 = "---"
        history5.description2 = "---"
        
        let history6 = MeHistory()
        history6.photo = UIImage(named: "TranspWin6%.png")
        history6.title = "---"
        history6.description1 = "---"
        history6.description2 = "---"
        
        items.append(history1)
        items.append(history2)
        items.append(history3)
        items.append(history4)
        items.append(history5)
        items.append(history6)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath
        ) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MeItemCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.imageUIImage.image = self.items[indexPath.item].photo
        cell.titleLabel.text = self.items[indexPath.item].title
        cell.description1Label.text = self.items[indexPath.item].description1
        cell.description2Label.text = self.items[indexPath.item].description2
        
        cell.layer.borderColor = UIColor.grayColor().CGColor
        cell.layer.borderWidth = 2
        
        return cell
    }
    
    
}