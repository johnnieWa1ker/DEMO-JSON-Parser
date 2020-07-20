//
//  StyleWrapper+UIView.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

extension StyleWrapper where Element: UIView {
    
    /// Style for invisible view
    static func clear() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { view in
            view.backgroundColor = .clear
        }
        return wrap
    }
    
    /// Standard view style
    static func standart() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { view in
            view.backgroundColor = AppTheme.white
        }
        return wrap
    }
    
    /// View with rounded top corners
    static func roundedTopCorners(_ color: UIColor) -> StyleWrapper {
        let wrap = StyleWrapper.wrap { view in
            view.backgroundColor = color
            view.roundCorners([.topLeft, .topRight], radius: 20.0)
        }
        return wrap
    }
    
    /// View with all rounded corners
    static func roundedAllCorners(_ color: UIColor) -> StyleWrapper {
        let wrap = StyleWrapper.wrap { view in
            view.backgroundColor = color
            view.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 10.0)
        }
        return wrap
    }
}
