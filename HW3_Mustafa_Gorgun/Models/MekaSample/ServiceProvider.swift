//
//  ServiceProvider.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class ServiceProvider: ApiServiceProvider<BaseRequest> {
    static let url = "https://api.opensea.io/api/v1/assets?collection=jungle-freaks-by-trosley&offset=0&limit=4"
    init() {
        
        super.init(method: .get, baseUrl: Self.url)
    }
    
}
