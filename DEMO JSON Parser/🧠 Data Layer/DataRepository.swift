//
//  DataRepository.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKUseCase
import GKNetwork

protocol DataRepositoryInterface: RepositoryInterface {
    func getData(completion: @escaping (_ result: DataModel?, _ error: Error?) -> Void)
}

class DataRepository: DataRepositoryInterface {
    
    // MARK: - Props
    
    // MARK: - DataRepositoryInterface
    func getData(completion: @escaping (DataModel?, Error?) -> Void) {
        
        guard let request = DataDataRouter.Remote.data.request else {
            completion(nil, ErrorHelper(title: nil, description: AppLocalization.ErrorMessage.internalServerError.localized, code: ErrorCodes.internalServerError))
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let receivedData = data, let receivedResponse = response as? HTTPURLResponse, error == nil {
                switch receivedResponse.statusCode {
                case 200:
                    do {
                        if let object = try JSONSerialization.jsonObject(with: receivedData, options: []) as? [String: Any] {
                            var returnValue = DataModel(dict: object)
                            completion(returnValue, nil)
                        }
                    } catch let parsingError {
                        completion(nil, parsingError)
                    }
                default:
                    let serverError = NSError(domain: "", code: receivedResponse.statusCode, userInfo: nil)
                    completion(nil, serverError)
                }
            } else {
                NSLog("[DEBUG] ERROR: \(error?.localizedDescription ?? "unknown error")")
                completion(nil, error)
            }
        }
        
        task.resume()
    }
    
    // MARK: - Module functions
}
