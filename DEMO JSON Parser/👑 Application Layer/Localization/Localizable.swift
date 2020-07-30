//
//  Localizable.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation

protocol Localizable: RawRepresentable { }

extension Localizable {
    
    var key: String {
        let value = self.rawValue as? String ?? ""
        return value
    }
    
    var localized: String {
        let lang: String = AppLocalizationManager.current.type.localizationKey
        if let path = Bundle.main.path(forResource: lang, ofType: "lproj"), let bundle = Bundle(path: path) {
            return NSLocalizedString(self.key, tableName: nil, bundle: bundle, value: "", comment: "")
        } else {
            return NSLocalizedString(self.key, comment: "")
        }
    }
    
    var loc: String {
        let value = self.localized
        return value
    }
    
}


extension String {
    var localized: String {
        let value = NSLocalizedString(self, comment: "")
        return value
    }
    
    var loc: String {
        let value = self.localized
        return value
    }
}
