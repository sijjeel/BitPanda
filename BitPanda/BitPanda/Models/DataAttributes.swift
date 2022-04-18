//
//  DataAttributesModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct DataAttributes: Codable {
    let cryptocoins, commodities: [Commodity]
    let fiats: [Fiat]
    let wallets, commodityWallets: [Wallet]
    let fiatwallets: [FiatWallet]

    enum CodingKeys: String, CodingKey {
        case cryptocoins, commodities, fiats, wallets
        case commodityWallets = "commodity_wallets"
        case fiatwallets
    }
}
