//
//  CommodityWalletAttributesModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation


struct CommodityWalletAttributesModel: Codable {
    let cryptocoinID, cryptocoinSymbol, balance: String
    let isDefault: Bool
    let name: String
    let pendingTransactionsCount: Int
    let deleted: Bool

    enum CodingKeys: String, CodingKey {
        case cryptocoinID = "cryptocoin_id"
        case cryptocoinSymbol = "cryptocoin_symbol"
        case balance
        case isDefault = "is_default"
        case name
        case pendingTransactionsCount = "pending_transactions_count"
        case deleted
    }
}
