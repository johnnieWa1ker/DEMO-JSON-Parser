//
//  DatumModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

public class DatumModel {
    
    // MARK: - Props
    var name: String?
    var data: DataClassModel?
    
    // MARK: - Initialization
    init(dict: [String: Any]) {
        self.name = dict["name"] as? String
        if let data = dict["data"] as? [String: Any] {
            self.data = DataClassModel(dict: data)
        }
    }
}
