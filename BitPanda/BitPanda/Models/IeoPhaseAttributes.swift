//
//  IeoPhaseAttributeModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct IeoPhaseAttributes: Codable {
    let name: String
    let phaseNumber: Int
    let startDate, endDate: EndDate
    let maxStock, price: String
    let active: Bool

    enum CodingKeys: String, CodingKey {
        case name
        case phaseNumber = "phase_number"
        case startDate = "start_date"
        case endDate = "end_date"
        case maxStock = "max_stock"
        case price, active
    }
}
