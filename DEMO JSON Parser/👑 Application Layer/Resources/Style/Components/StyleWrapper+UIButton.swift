//
//  StyleWrapper+UIButton.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import Foundation
import UIKit

extension StyleWrapper where Element: UIButton {
    
    /// Button with rounded corners. The background matches the main color theme of the application.
    static func largeAccent() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { button in
            button.backgroundColor = AppTheme.blue
            button.setTitleColor(AppTheme.white, for: .normal)
            button.titleLabel?.font = SFPRO.medium.font(size: 18.0)
            button.layer.cornerRadius = 10.0
            button.layer.masksToBounds = true
            button.contentEdgeInsets = UIEdgeInsets(top: 12.0, left: 40.0, bottom: 12.0, right: 40.0)
        }
        return wrap
    }
    
    /// Button with transparent background. The main accent color in the signature.
    static func largeAccentInvert() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { button in
            button.backgroundColor = .clear
            button.setTitleColor(AppTheme.blue, for: .normal)
            button.titleLabel?.font = SFPRO.medium.font(size: 18.0)
            button.layer.cornerRadius = 10.0
            button.layer.masksToBounds = true
            button.contentEdgeInsets = UIEdgeInsets(top: 12.0, left: 40.0, bottom: 12.0, right: 40.0)
        }
        return wrap
    }
    
    /// Button with rounded corners. The background matches the main color theme of the application. Unlike "largeAccent" it has a smaller font and sizes
    static func smallAccent() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { button in
            button.backgroundColor = AppTheme.blue
            button.setTitleColor(AppTheme.white, for: .normal)
            button.titleLabel?.font = SFPRO.regular.font(size: 16.0)
            button.layer.cornerRadius = 10.0
            button.layer.masksToBounds = true
        }
        return wrap
    }
    
    /// Button with transparent background. The main accent of color in the signature. Unlike "largeAccentInvert" it has a smaller font and sizes
    static func smallAccentInvert() -> StyleWrapper {
        let wrap = StyleWrapper.wrap { button in
            button.backgroundColor = .clear
            button.setTitleColor(AppTheme.blue, for: .normal)
            button.titleLabel?.font = SFPRO.regular.font(size: 16.0)
            button.layer.cornerRadius = 10.0
            button.layer.masksToBounds = true
        }
        return wrap
    }
}
