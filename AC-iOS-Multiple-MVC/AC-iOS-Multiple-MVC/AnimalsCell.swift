//
//  AnimalsCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kary Martinez on 8/14/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalsCell: UITableViewCell {
    @IBOutlet weak var orginLAbel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
