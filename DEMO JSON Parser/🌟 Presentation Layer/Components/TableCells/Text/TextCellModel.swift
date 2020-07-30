//
//  TextCellModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit
import GKRepresentable

class TextCellModel: TableCellModel {
    
    // MARK: - Setup functions
    public override var cellIdentifier: String {
        let id = TextCell.identifier
        return id
    }
    
    public override var cellHeight: CGFloat {
        let height = UITableView.automaticDimension
        return height
    }
    
    // MARK: - Props
    var title: String
    
    // MARK: - Initialization
    init(title: String) {
        self.title = title
    }
}
