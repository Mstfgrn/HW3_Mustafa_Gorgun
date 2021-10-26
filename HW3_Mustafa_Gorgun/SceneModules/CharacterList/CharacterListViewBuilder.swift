//
//  CharacterListViewBuilder.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import UIKit

class CharacterListViewBuilder {
    class func builder() -> UIViewController {
        let characterlistFormater = CharacterLDataFormater()
        let viewModel = CharacterListViewModel(formatter: characterlistFormater)
        let viewController = CharacterListViewController(viewModel: viewModel)
        return viewController
    }
}
