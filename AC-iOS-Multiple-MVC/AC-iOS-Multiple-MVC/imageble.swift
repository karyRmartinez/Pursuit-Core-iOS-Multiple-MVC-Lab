//
//  imageble.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Kary Martinez on 8/14/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import Foundation
import UIKit

protocol imageble {
    var imageName: String {get}
    func getImage() -> UIImage
}
