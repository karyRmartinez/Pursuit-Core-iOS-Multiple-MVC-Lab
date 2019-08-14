//
//  zooAnimalTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kary Martinez on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class zooAnimalTableViewCell: UITableViewCell {
    @IBOutlet weak var zooAnimalImageView: UIImageView!
    
    @IBOutlet weak var zooAnimalLabel: UILabel!
    
    func setzooAnimals(zooAnimals: ZooAnimalsListViewController) {
        zooAnimalImageView.image = zooAnimalImageView.image
        zooAnimalLabel.text = zooAnimalLabel.text
    }
}
