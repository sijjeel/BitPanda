//
//  FiatWalletAttributesModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct FiatWalletAttributesModel: Codable {
    let fiatID, fiatSymbol, balance, name: String
    let pendingTransactionsCount: Int

    enum CodingKeys: String, CodingKey {
        case fiatID = "fiat_id"
        case fiatSymbol = "fiat_symbol"
        case balance, name
        case pendingTransactionsCount = "pending_transactions_count"
    }
}
