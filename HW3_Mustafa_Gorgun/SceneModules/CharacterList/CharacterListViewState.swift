//
//  CharacterListViewState.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 25.10.2021.
//

import Foundation
typealias CharacterListStateBlock = (CharacterListViewState) -> Void

enum CharacterListViewState {
    
    case loading
    case done
    case failure
    
}
