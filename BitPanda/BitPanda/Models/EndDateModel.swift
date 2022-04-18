//
//  EndDateModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 13/04/2022.
//

import Foundation

struct EndDate: Codable {
    let dateIso8601: String
    let unix: String

    enum CodingKeys: String, CodingKey {
        case dateIso8601 = "date_iso8601"
        case unix
    }
}
