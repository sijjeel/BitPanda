//
//  FiatWalletModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct FiatWalletModel: Codable {
    let type: String
    let attributes: FiatWalletAttributesModel
    let id: String
}
