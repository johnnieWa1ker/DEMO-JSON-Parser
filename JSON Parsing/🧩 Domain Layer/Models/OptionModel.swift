//
//  OptionModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

public class OptionModel {
    
    // MARK: - Props
    var id: Int?
    var text: String?
    
    // MARK: - Initialization
    init(dict: [String: Any]) {
        self.id = dict["id"] as? Int
        self.text = dict["text"] as? String
    }
}
