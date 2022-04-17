//
//  WalletModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation


struct WalletModel: Codable {
    let type: CommodityWalletTypeEnum
    let attributes: CommodityWalletAttributesModel
    let id: String
}
