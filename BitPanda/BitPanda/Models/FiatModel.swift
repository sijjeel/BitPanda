//
//  FiatModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct FiatModel: Codable {
    let type: String
    let attributes: FiatAttributesModel
    let id: String
}
