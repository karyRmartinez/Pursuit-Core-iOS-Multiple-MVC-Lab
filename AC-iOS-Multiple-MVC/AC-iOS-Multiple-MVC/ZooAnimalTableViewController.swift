//
//  ZooAnimalTableViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kary Martinez on 8/14/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooAnimalTableViewController: UITableViewController {
    
    let animals = ZooAnimal.allAnimals
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4 //This is the number of sections in our table
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { //Names the sections
        switch section {
        case 0: return "Mammals"
        case 1: return "Reptile"
        case 2: return "insect"
        case 3: return "Bird"
        default: return "nothing"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return ZooAnimal.mammals.count
        case 1: return ZooAnimal.reptile.count
        case 2: return ZooAnimal.insect.count
        case 3: return ZooAnimal.bird.count
        default: return 0
            //Since we have different sections for each classification of animal, we want each section to have a different number of rows
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // here here we have a func that fixes the section size yayyy
        return 130
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let currentAnimal = animals[indexPath.section][indexPath.row]
        //'animals' is an array of arrays. So, to get a specific zoo animal, we need to have two coordinates. The first one looks at a specific array in the array of arrays, the second coordinate looks at a specific animal in that specific array.
        
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "myAnimalCell", for: indexPath) as? AnimalsCell {
            cell.titleLabel.text = currentAnimal.name
            cell.orginLAbel.text = currentAnimal.origin
            cell.animalImage.image = currentAnimal.getImage()
            return cell
            //dequeueReusableCell-
            //Returns a reusable table-view cell object for the specified reuse identifier and adds it to the table
            
            //the actual image is the output of the function getImage.
        }
        return UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let segueIdentifer = segue.identifier else {fatalError("No indentifier in segue")}
        
        switch segueIdentifer {
            
        case "segToDescription":
            guard let destVC = segue.destination as? DetailedViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else {fatalError("No row selected")
            }
            let currentAnimal = animals[selectedIndexPath.section][selectedIndexPath.row]
            destVC.currentZooAnimal = currentAnimal
            
        default:
            fatalError("unexpected segue identifies")
            
        }
    }
}




