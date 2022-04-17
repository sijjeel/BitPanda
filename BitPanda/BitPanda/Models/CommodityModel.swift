//
//  CommodityModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation


struct CommodityModel: Codable {
    let type: AssetTypeNameEnum
    let attributes: CommodityAttributesModel
    let id: String
}
