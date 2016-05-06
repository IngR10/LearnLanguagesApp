//
//  indexViewController.swift
//  SapbeFutbol
//
//  Created by Ronald Edgardo Ramirez Diaz on 4/29/16.
//  Copyright © 2016 FutbolWin. All rights reserved.
//

import UIKit

class TutorViewController: ViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let futbolWinColors = FutbolWinStyleColors()
    let reuseIdentifier = "cell"
    var items: [Teacher] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateItems()
    }
    
    
    func populateItems() {
        let teacher1 = Teacher()
        teacher1.photo = UIImage(named: "MarioPerfil100x100.png")!
        teacher1.firstName = "Mario"
        teacher1.secondName = "Bross"
        teacher1.profileDescription = "Fontanero y Profesor de italiano"
        
        let teacher2 = Teacher()
        teacher2.photo = UIImage(named: "DeathPoolProfile100x100.png")!
        teacher2.firstName = "Death"
        teacher2.secondName = "Pool"
        teacher2.profileDescription = "Suspicas sesino y profesor de ingles"
        
        let teacher3 = Teacher()
        teacher3.photo = UIImage(named: "HomerProfile100x100.png")!
        teacher3.firstName = "Homer"
        teacher3.secondName = "Simpson"
        teacher3.profileDescription = "Comedor de rosquillas y profesor de ingles"
        
        let teacher4 = Teacher()
        teacher4.photo = UIImage(named: "SpidermanProfile100x100.png")!
        teacher4.firstName = "SpiderMan"
        teacher4.secondName = ""
        teacher4.profileDescription = "Super heroe y conocedor del frances"
        
        let teacher5 = Teacher()
        teacher5.photo = UIImage(named: "GokuProfile100x100.png")!
        teacher5.firstName = "Goku"
        teacher5.secondName = ""
        teacher5.profileDescription = "Salvador de la tierra y profesor de nameku"
        
        let teacher6 = Teacher()
        teacher6.photo = UIImage(named: "HarleyQueenPoolProfile100x100")!
        teacher6.firstName = "Harley"
        teacher6.secondName = "Queen"
        teacher6.profileDescription = "Villana y conversadora en portugues"
        
        let teacher7 = Teacher()
        teacher7.photo = UIImage(named: "MickeyMouseProfile100x100.png")!
        teacher7.firstName = "Mickey"
        teacher7.secondName = "Mouse"
        teacher7.profileDescription = "Famoso actor y profesor de ingles"
        
        let teacher8 = Teacher()
        teacher8.photo = UIImage(named: "StarWarProfile100x100.png")!
        teacher8.firstName = "Star"
        teacher8.secondName = "Wars"
        teacher8.profileDescription = "Habla perfectamente el idioma interestelar"
        
        let teacher9 = Teacher()
        teacher9.photo = UIImage(named: "PinkPanterProfile100x100.png")!
        teacher9.firstName = "Pink"
        teacher9.secondName = "Panter"
        teacher9.profileDescription = "Habla perfectamente el idioma interestelar"
        
        let teacher10 = Teacher()
        teacher10.photo = UIImage(named: "WolverineProfile100x100.png")!
        teacher10.firstName = "Wolverine"
        teacher10.secondName = ""
        teacher10.profileDescription = "Habla perfectamente el idioma interestelar"
        
        let teacher11 = Teacher()
        teacher11.photo = UIImage(named: "JameBondProfile100x100.png")!
        teacher11.firstName = "Bond,"
        teacher11.secondName = "James Bond"
        teacher11.profileDescription = "Seductor y profesor de Sueco e Ingles"
        
        items.append(teacher1)
        items.append(teacher2)
        items.append(teacher3)
        items.append(teacher4)
        items.append(teacher5)
        items.append(teacher6)
        items.append(teacher7)
        items.append(teacher8)
        items.append(teacher9)
        items.append(teacher10)
        items.append(teacher11)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    
    // make a cell for each cell index path
    func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath
    ) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! indexCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.TeacherProfileUIImage.image = self.items[indexPath.item].photo
        cell.teacherNameLabel.text = "\(self.items[indexPath.item].firstName!)" + " " + "\(self.items[indexPath.item].secondName!)"
        cell.TeacherInformationLabel.text = self.items[indexPath.item].profileDescription
        
        
        //cell.frame.size.width = 70
        //cell.frame.size.height = 70
        
        cell.layer.borderColor = UIColor.grayColor().CGColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.item)!")
        self.performSegueWithIdentifier("goToTutorDetail", sender: self)
    }
    
}
