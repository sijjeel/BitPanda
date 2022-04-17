//
//  DataAttributesModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct DataAttributesModel: Codable {
    let cryptocoins, commodities: [CommodityModel]
    let fiats: [FiatModel]
    let wallets, commodityWallets: [WalletModel]
    let fiatwallets: [FiatWalletModel]

    enum CodingKeys: String, CodingKey {
        case cryptocoins, commodities, fiats, wallets
        case commodityWallets = "commodity_wallets"
        case fiatwallets
    }
}
