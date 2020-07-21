//
//  SelectorCellModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit
import GKRepresentable

class SelectorCellModel: TableCellModel {
    
    // MARK: - Setup functions
    public override var cellIdentifier: String {
        let id = SelectorCell.identifier
        return id
    }
    
    public override var cellHeight: CGFloat {
        let height = UITableView.automaticDimension
        return height
    }
    
    // MARK: - Props
    var values: [OptionModel]
    var selectedValue: Int
    
    // MARK: - Initialization
    init(values: [OptionModel], selectedValue: Int) {
        self.values = values
        self.selectedValue = selectedValue
    }
}
