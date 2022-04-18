//
//  FiatModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct Fiat: Codable {
    let type: String
    let attributes: FiatAttributes
    let id: String
}
