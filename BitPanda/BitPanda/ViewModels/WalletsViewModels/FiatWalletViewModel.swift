//
//  FiatWalletViewModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import Foundation

class FiatWalletViewModel {
    var fiatWallets: [FiatWallet] = [FiatWallet]()
    
    /// Rearrange Wallets in decending order by balance.
    func reArrangeFiatsArray () {
        fiatWallets = fiatWallets.sorted(by: { Double($0.attributes.balance) ?? 0.00 > Double($1.attributes.balance) ?? 0.00 })
    }
}
