//
//  CommodityModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation


struct Commodity: Codable {
    let type: AssetTypeNameEnum
    let attributes: CommodityAttributes
    let id: String
}
