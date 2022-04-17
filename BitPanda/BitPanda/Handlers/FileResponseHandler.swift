//
//  FileResponseHandler.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation

protocol FileResponseHandlerDelegate {
    func getModel<T: Codable>(type: T.Type, data: Data, completion: (Result<T, FileErrorEnum>) -> Void)
}

class FileResponseHandler : FileResponseHandlerDelegate {
    
    
    /// Get model object from json data
    /// - Parameters:
    ///   - type: model type
    ///   - data: json data of Data type
    ///   - completion: completion to either return populated model or decoding error
    func getModel<T: Codable>(type: T.Type, data: Data, completion: (Result<T, FileErrorEnum>) -> Void) {
        if let response = try? JSONDecoder().decode(type.self, from: data) {
            completion(.success(response))
        } else {
            completion(.failure(.DecodingError))
        }
    }
    
}
