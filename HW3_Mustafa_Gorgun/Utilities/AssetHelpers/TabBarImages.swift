//
//  TabBarImages.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import UIKit

enum TabBarImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case home = "home"
    case favorite = "favorite"
    case homeSelected = "homeSelected"
    case favoriteSelected = "favoriteSelected"
    //case bug = "bug"
    //case bugSelected = "bugSelected"
    
}
