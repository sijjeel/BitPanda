//
//  FileManager.swift
//  BitPanda
//
//  Created by muhammad sijjeel on 14/04/2022.
//

import Foundation

enum FileErrorEnum: Error {
    case NoData
    case DecodingError
}


class FileManager {
    let readJsonFileHandler: ReadJsonFileHandler
    let fileResponseHandler: FileResponseHandler
    
    init(readJsonFileHandler: ReadJsonFileHandler = ReadJsonFileHandler(),
         fileResponseHandler: FileResponseHandler = FileResponseHandler()) {
        self.readJsonFileHandler = readJsonFileHandler
        self.fileResponseHandler = fileResponseHandler
    }
    
    /// Fetch Data from File
    /// - Parameters:
    ///   - type: Model type
    ///   - fileName: name of file
    ///   - completion: to return either json data or error
    func getCryptoData<T: Codable>(type: T.Type, fileName: String, completion: @escaping(Result<T, FileErrorEnum>) -> Void) {
           
        readJsonFileHandler.readJSONFile(fileName: fileName) { result in
            switch result {
                case .success(let data):
                    self.fileResponseHandler.getModel(type: type, data: data) { decodedResult in
                        switch decodedResult {
                        case .success(let model):
                            completion(.success(model))
                        case .failure(let error):
                            completion(.failure(error))
                        }
                    }
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}
