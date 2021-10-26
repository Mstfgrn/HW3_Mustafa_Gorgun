//
//  CharacterListViewModel.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    private var state: CharacterListStateBlock?
    private var data: CharactersDataResponse?
    private let formatter: CharacterDataFormatterProtocol

    deinit {
        print("DEINIT CharacterListViewModel")
    }
        
     
     init(formatter: CharacterDataFormatterProtocol) {
     self.formatter = formatter
     }

    func subscribeState(completion: @escaping CharacterListStateBlock) {
        state = completion
    }
    func getCharacterList(){
        state?(.loading)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){ [weak self] in
            self?.fireApiCall{ [weak self] result in
                switch result{
                case .success(let response):
                    print("response: \(response)")
                case .failure(let error):
                    print("error: \(error)")
                }
                self?.state?(.done)
            }
        }
        
    }
    /*func getCharacterList() {
        state?(.loading)
        fireApiCall(with: apiCallHandler)
    }*/
    
    private func fireApiCall(with completion: @escaping (Result<CharactersDataResponse, ErrorResponse>) -> Void) {
        
        do {
            let urlRequest = try ServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error : \(error)")
        }
        
    }
    
    private func dataHandler(with response: CharactersDataResponse) {
        self.data = response
        state?(.done)
    }
    
    // MARK: - CallBack Listener
    private lazy var apiCallHandler: (Result<CharactersDataResponse, ErrorResponse>) -> Void = { [weak self] result in
        switch result {
        case .failure(let error):
            print("error : \(error)")
            self?.state?(.failure)
        case .success(let data):
            self?.dataHandler(with: data)
        }
    }
    
}


extension CharacterListViewModel: ItemListProtocol{
    func askNumberOfSection() -> Int {
            return 1
        }
        
        func askNumberOfItem(in section: Int) -> Int {
            guard let dataUnwrapped = data else { return 0 }
            return dataUnwrapped.assets.count
        }
        
        func askData(at index: Int) -> GenericDataProtocol? {
            guard let dataUnwrapped = data else { return nil }
            return formatter.takeItem(from: dataUnwrapped.assets[index])
        }
    
    
}


