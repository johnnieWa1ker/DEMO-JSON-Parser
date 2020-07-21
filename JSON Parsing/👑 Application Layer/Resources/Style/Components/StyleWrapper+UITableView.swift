//
//  StyleWrapper+UITableView.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

extension StyleWrapper where Element: UITableView {
    
    /// Standard style for tables
    static func standart() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { table in
            table.backgroundColor = .black
            table.separatorStyle = .none
            table.backgroundColor = .clear
            table.contentInset = UIEdgeInsets(top: 6.0, left: 0.0, bottom: 6.0, right: 0.0)
        }
        return wrap
    }
}
