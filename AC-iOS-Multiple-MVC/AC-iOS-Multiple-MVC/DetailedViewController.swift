//
//  DetailedViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kary Martinez on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    @IBOutlet weak var imageOfAnimal: UIImageView!
    

    @IBOutlet weak var animalLabel: UILabel!
    
    @IBOutlet weak var descriptionText: UITextView!
    
    var currentZooAnimal: ZooAnimal!
    
    override func viewDidLoad() {
     descriptionText.text = currentZooAnimal.info
        imageOfAnimal.image = currentZooAnimal.getImage()
        animalLabel.text = currentZooAnimal.name
    
        super.viewDidLoad()
    }

}
