//
//  WalletsViewModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 17/04/2022.
//

import Foundation

class WalletsViewModel {
    var wallets: [Wallet] = [Wallet]()
    
    /// Filter array with deleted wallets, do not show deleted wallets
    func filterWalletsArray () {
        wallets = wallets.filter { $0.attributes.deleted == false }
    }
    
    /// Rearrange Wallets in decending order by balance.
    func reArrangeWalletsArray() {
        wallets = wallets.sorted(by: { Double($0.attributes.balance) ?? 0.00 > Double($1.attributes.balance) ?? 0.00 })
    }
}
