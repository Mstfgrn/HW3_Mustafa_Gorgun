//
//  FavoriteViewBuilder.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import UIKit

class FavoriteViewBuilder{
    class func build() -> UIViewController {
        let viewModel = FavoriteViewModel()
        let viewController = FavoriteViewController(viewModel: viewModel)
        viewController.title = "FavoriteViewController"
        viewController.tabBarItem.image = TabBarImages.favorite.value
        viewController.tabBarItem.selectedImage = TabBarImages.favoriteSelected.value

        return viewController
    }
}
