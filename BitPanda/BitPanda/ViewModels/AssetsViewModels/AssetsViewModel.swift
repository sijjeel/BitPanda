//
//  FiatViewModel.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation

class AssetsViewModel {
    
    let getCryptoDataDelegate : GetCryptoDataDelegate
    
    var responseModel = Response(data: nil)
    
    init (getCryptoDataDelegate: GetCryptoDataDelegate = GetCryptoData()) {
        self.getCryptoDataDelegate = getCryptoDataDelegate
    }
    
    func getCryptoDataFromFile () {
        GetCryptoData().getCrypto { result in
            switch result {
            case .success(let model):
                self.responseModel = model
            case .failure(let error):
                print(error)
            }
        }
    }
}
