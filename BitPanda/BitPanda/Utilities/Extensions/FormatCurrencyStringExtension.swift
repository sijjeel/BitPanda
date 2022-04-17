//
//  FormatCurrencyStringExtension.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import Foundation

extension String {
    
    func formatCurrencyWithLocale () -> String {
        let number = NumberFormatter()
        number.numberStyle = .currency
        number.usesGroupingSeparator = true
        number.locale = .current
        
        if let stringNumber = Double(self) {
            let numberNS = NSNumber(value: stringNumber)
            return number.string(from: numberNS)!
        }
        
        return "Not a Number"
    }
}
