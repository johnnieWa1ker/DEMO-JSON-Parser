//
//  DataModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

public class DataModel {
    
    // MARK: - Props
    var data: [DatumModel]
    var views: [String]
    
    // MARK: - Initialization
    init(dict: [String: Any]) {
        
        self.data = []
        for oneData in dict["data"] as? [[String: Any]] ?? [] {
            self.data.append(DatumModel(dict: oneData))
        }
        
        self.views = []
        for view in dict["view"] as? [String] ?? [] {
            self.views.append(view)
        }
    }
}
