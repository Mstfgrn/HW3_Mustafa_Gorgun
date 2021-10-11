//
//  MainTabBarBuilder.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import UIKit

class MainTabBarBuilder  {
    class func build() -> UIViewController {
        let mainViewController = MainViewBuilder.build()
        let favoriteViewController = FavoriteViewBuilder.build()
        
        let tabViewController = MainTabBarController()
        tabViewController.viewControllers = [mainViewController, favoriteViewController]
        tabViewController.tabBar.backgroundColor = .systemBackground
        tabViewController.tabBar.tintColor = .black
        return tabViewController
    }
}
