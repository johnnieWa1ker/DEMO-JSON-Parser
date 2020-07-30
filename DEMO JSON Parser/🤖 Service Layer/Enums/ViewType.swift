//
//  ViewType.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 22.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

enum ViewType {
    
    case text
    case image
    case selector
    
    var rawValue: String {
        switch self {
        case .text:
            return "hz"
        case .image:
            return "picture"
        case .selector:
            return "selector"
        }
    }

}
