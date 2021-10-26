//
//  CharacterLDataFormater.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 26.10.2021.
//

import Foundation

class CharacterLDataFormater: CharacterDataFormatterProtocol {
    func takeItem(from data: Asset) -> ItemTableViewCellData {
        return ItemTableViewCellData(imageData: CustomImageViewComponentData(imageUrl: data.imageThumbnailURL), cellInfo: LabelPackComponentData(title: data.name, subTitle:    data.assetContract?.assetContractDescription ?? "NFT has no explanation."))
    }
}
