//
//  GetCryptoData.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation

protocol GetCryptoDataDelegate {
    func getCrypto(completion: @escaping(Result<ResponseModel, FileErrorEnum>) -> Void)
}

class GetCryptoData : GetCryptoDataDelegate {
    
    /// Get Crypto Data
    /// - Parameters:
    ///   - fileName: name of file
    ///   - completion: completion with either populated Model or error
    func getCrypto(completion: @escaping(Result<ResponseModel, FileErrorEnum>) -> Void) {
        FileManager().getCryptoData(type: ResponseModel.self, fileName: Constants.FILE_NAME, completion: completion)
    }
}
