//
//  CharacterListViewModel.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 11.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    init() {
        
    }
    func getCharacterList(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){ [weak self] in
            self?.fireApiCall{ [weak self] result in
                switch result{
                case .success(let response):
                    print("response: \(response)")
                case .failure(let error):
                    print("error: \(error)")
                }
            }
        }
        
    }
    private func fireApiCall(with completion: @escaping (Result<CharactersDataResponse ,ErrorResponse>) -> Void){
        guard let url = URL(string: "https://api.opensea.io/api/v1/assets?collection=jungle-freaks-by-trosley&offset=0&limit=1") else {return}
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 60)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        APIManager.shared.executeRequest(urlRequest: request, completion: completion)
    }
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
