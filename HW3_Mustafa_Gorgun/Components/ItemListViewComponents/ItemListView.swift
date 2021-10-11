//
//  ItemListView.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import UIKit

class ItemListView: BaseView {
    
    deinit {
        print("DEINIT ItemListView")
    }
    
    weak var delegate: ItemListProtocol?
    
    private lazy var tableView: UITableView = {
        let temp = UITableView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.delegate = self
        temp.dataSource = self
        return temp
    }()
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
    }
    func addTableView(){
        self.addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor)

        ])
    }
    func reloadTableView(){
        tableView.reloadData()
        
    }
    
}

extension ItemListView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = delegate?.askData(at: indexPath.row) else {fatalError("Provide Data Man")}
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate?.askNumberOfItem(in: section) ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return delegate?.askNumberOfSection() ?? 0
    }
    
}
