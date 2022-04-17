//
//  FiatViewModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 16/04/2022.
//

import Foundation

class FiatViewModel {
    var fiats: [FiatModel] = [FiatModel]()
    
    /// Filter fiat array who does not have wallet associated with them.
    func filterFiatArray () {
        fiats = fiats.filter { $0.attributes.hasWallets == true }
    }
}
