//
//  DataDataRouter.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

enum DataDataRouter {
    enum Remote {
        case data
        
        var method: HTTPMethod {
            switch self {
            case .data:
                return .get
            }
        }
        
        var path: String {
            switch self {
            case .data:
                return "\(AppConfiguration.serverApi)"
            }
        }
        
        var request: URLRequest? {
//            var parameters: [String: Any] = [:]
            
            switch self {
            case .data:
                return RemoteFactory.request(path: self.path, parameters: nil, headers: nil, method: self.method)
            }
        }
    }
}
