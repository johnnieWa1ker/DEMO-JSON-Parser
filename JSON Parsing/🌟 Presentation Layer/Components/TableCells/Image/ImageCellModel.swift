//
//  ImageCellModel.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit
import GKRepresentable

class ImageCellModel: TableCellModel {
    
    // MARK: - Setup functions
    public override var cellIdentifier: String {
        let id = ImageCell.identifier
        return id
    }
    
    public override var cellHeight: CGFloat {
        let height = UITableView.automaticDimension
        return height
    }
    
    // MARK: - Props
    var title: String
    var imageUrl: URL
    
    // MARK: - Initialization
    init(title: String, imageUrl: URL) {
        self.title = title
        self.imageUrl = imageUrl
    }
}
