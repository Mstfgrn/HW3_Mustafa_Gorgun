//
//  BaseViewController.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 10.10.2021.
//

import UIKit

class BaseViewController<T>: UIViewController {
    
    var viewModel: T!
    
    convenience init(viewModel: T) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllerConfigurations()
        configureUI()
    }
    
    func prepareViewControllerConfigurations() {
        view.backgroundColor = .white
    }
    
    func configureUI() {}
}
