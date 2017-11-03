//
//  DetailAnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class DetailAnimalViewController: UIViewController {
    
    var detailedAnimal: ZooAnimal? = nil

    @IBOutlet weak var AnimalImage: UIImageView!
    
    @IBOutlet weak var animalName: UILabel!
    
    @IBOutlet weak var animalOrigin: UILabel!
    @IBOutlet weak var animalDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let zooAnimal = detailedAnimal{
            animalName.text = zooAnimal.name
            animalDescription.text = zooAnimal.info
            animalOrigin.text = "Origins: \(zooAnimal.origin)"
            AnimalImage.image = UIImage(named: String(zooAnimal.imageNumber))
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
