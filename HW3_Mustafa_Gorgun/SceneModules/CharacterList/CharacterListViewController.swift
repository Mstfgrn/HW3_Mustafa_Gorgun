//
//  CharacterListViewController.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    private var mainComponent: ItemListView!
    //private var mainComponent: SampleTest!
    deinit {
        print("DEINIT CharacterListViewModel")
    }

    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addItemListView()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    func addItemListView(){
        //mainComponent = ItemListView()
        mainComponent = ItemListView()
        
        //mainComponent.delegate = self
        mainComponent.delegate = viewModel
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
        
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor)
            
        
        ])
    }
}
//MARK: These Comment send mainComponent
    /*lazy var tableView: UITableView = {
        let temp = UITableView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.delegate = self
        temp.dataSource = self
        return temp
    }()
    extension CharacterListViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
    }*/


