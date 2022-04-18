//
//  FiatWalletModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct FiatWallet: Codable {
    let type: String
    let attributes: FiatWalletAttributes
    let id: String
}
