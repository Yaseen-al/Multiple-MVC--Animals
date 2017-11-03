//
//  AnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var myAnimals = ZooAnimal.zooAnimals
    @IBOutlet weak var mytableView: UITableView!
    
    
    //I need to methods one for how many rows and how it looks like
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MySubtitleCell") else {
            let defaultCell = UITableViewCell()
            return defaultCell
        }
        let rowSetup = indexPath.row
        let movieSetup = myAnimals[rowSetup]
        cell.textLabel?.text = movieSetup.name.capitalized
        cell.detailTextLabel?.text = movieSetup.classification.capitalized
        cell.imageView?.image = UIImage(named: String(movieSetup.imageNumber))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.mytableView.delegate = self
        self.mytableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if let destination = segue.destination as? DetailAnimalViewController{
        // Pass the selected object to the new view controller.
            let selectedRow = self.mytableView.indexPathForSelectedRow?.row
            let selectedAnimal = myAnimals[selectedRow!]
            destination.detailedAnimal = selectedAnimal
            
        }
    }

}
