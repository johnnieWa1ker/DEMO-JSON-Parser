//
//  Stylable.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

protocol Stylable { }

extension NSObject: Stylable { }

extension Stylable {
    
    static func style(style: @escaping Style<Self>) -> Style<Self> {
        let value = style
        return value
    }
    
    func apply(_ style: StyleWrapper<Self>) {
        switch style {
        case let .wrap(style):
            style(self)
        }
    }
    
}
