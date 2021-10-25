//
//  MakeCharactersResponse.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 24.10.2021.
//

import Foundation

public struct CharactersDataResponse: Codable {
    let assets: [Asset]?
}

// MARK: - Asset
struct Asset: Codable {
    let id: Int?
    let tokenID: String?
    let imageURL, imagePreviewURL, imageThumbnailURL: String?
    let imageOriginalURL: String?
    let name: String?
    let assetContract: AssetContract?
    let sellOrders: [SellOrder]?

    enum CodingKeys: String, CodingKey {
        case id
        case tokenID = "token_id"
        case imageURL = "image_url"
        case imagePreviewURL = "image_preview_url"
        case imageThumbnailURL = "image_thumbnail_url"
        case imageOriginalURL = "image_original_url"
        case name
        case assetContract = "asset_contract"
        case sellOrders = "sell_orders"
    }
}

// MARK: - AssetContract
struct AssetContract: Codable {
    let assetContractType, symbol, assetContractDescription: String?

    enum CodingKeys: String, CodingKey {
        case assetContractType = "asset_contract_type"
        case symbol
        case assetContractDescription = "description"
    }
}

// MARK: - SellOrder
struct SellOrder: Codable {
    let paymentTokenContract: PaymentTokenContract?

    enum CodingKeys: String, CodingKey {
        case paymentTokenContract = "payment_token_contract"
    }
}

// MARK: - PaymentTokenContract
struct PaymentTokenContract: Codable {
    let imageURL: String?
    let name, ethPrice, usdPrice: String?

    enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case name
        case ethPrice = "eth_price"
        case usdPrice = "usd_price"
    }
}
