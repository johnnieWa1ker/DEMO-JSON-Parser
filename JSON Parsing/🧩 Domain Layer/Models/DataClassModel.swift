//
//  DataClassModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

public class DataClassModel {
    
    // MARK: - Props
    var title: String?
    var imageUrl: String?
    var selectedOptionId: Int?
    var option: [OptionModel]
    
    // MARK: - Initialization
    init(dict: [String: Any]) {
        self.title = dict["text"] as? String
        self.imageUrl = dict["url"] as? String
        self.selectedOptionId = dict["selectedId"] as? Int
        
        self.option = []
        for variant in dict["variants"] as? [[String: Any]] ?? [] {
            self.option.append(OptionModel(dict: variant))
        }
    }
}
