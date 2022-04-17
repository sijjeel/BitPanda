//
//  ReadJsonFileHandler.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation

protocol ReadJsonFileHandlerDelegate {
    func readJSONFile(fileName: String, completion: @escaping(Result<Data, FileErrorEnum>) -> Void)
}

class ReadJsonFileHandler : ReadJsonFileHandlerDelegate{
    
    /// To read the local Json file from Bundle
    /// - Parameters:
    ///   - fileName: name of file
    ///   - completion: to return either json data or error
    func readJSONFile(fileName: String, completion: @escaping(Result<Data, FileErrorEnum>) -> Void) {
        do {
            if let bundlePath = Bundle.main.path(forResource: fileName, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                completion(.success(jsonData))
            } else {
                completion(.failure(.NoData))
            }
        } catch {
            completion(.failure(.NoData))
        }
    }
}
