//
//  WalletModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation


struct Wallet: Codable {
    let type: CommodityWalletTypeEnum
    let attributes: CommodityWalletAttributes
    let id: String
}
