//
//  CharacterListViewModel.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation

class CharacterListViewModel {
    
}
extension CharacterListViewModel: ItemListProtocol{
    func askNumberOfSection() -> Int {
        return 1
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        return 100
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        return nil 
    }
    
    
}
