//
//  AppTheme.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKExtensions

enum AppTheme {
    
    // MARK: - Status bar style
    public static var statusBarStyle: UIStatusBarStyle {
        switch AppThemeManager.current.type {
        case .light:
            return .default
        case .dark:
            return .default
        }
    }
    
    // MARK: - Custom colors
    /// HEX #333E4F
    public static var black: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "333E4F", alpha: 1.0)
        case .dark:
            return UIColor(hex: "333E4F", alpha: 1.0)
        }
    }
    
    /// HEX #858B95
    public static var darkGray: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "858B95", alpha: 1.0)
        case .dark:
            return UIColor(hex: "858B95", alpha: 1.0)
        }
    }
    
    /// HEX #ADB2B9
    public static var gray: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "ADB2B9", alpha: 1.0)
        case .dark:
            return UIColor(hex: "ADB2B9", alpha: 1.0)
        }
    }
    
    /// HEX #EEF1F4
    public static var lightGray: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "EEF1F4", alpha: 1.0)
        case .dark:
            return UIColor(hex: "EEF1F4", alpha: 1.0)
        }
    }
    
    /// HEX #84C549
    public static var green: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "84C549", alpha: 1.0)
        case .dark:
            return UIColor(hex: "84C549", alpha: 1.0)
        }
    }
    
    /// HEX #F44E4F
    public static var red: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "F44E4F", alpha: 1.0)
        case .dark:
            return UIColor(hex: "F44E4F", alpha: 1.0)
        }
    }
    
    /// HEX #F7953F
    public static var orange: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "F7953F", alpha: 1.0)
        case .dark:
            return UIColor(hex: "F7953F", alpha: 1.0)
        }
    }
    
    /// HEX #FECD46
    public static var yellow: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "FECD46", alpha: 1.0)
        case .dark:
            return UIColor(hex: "FECD46", alpha: 1.0)
        }
    }
    
    /// HEX #FFFFFF
    public static var white: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "FFFFFF", alpha: 1.0)
        case .dark:
            return UIColor(hex: "FFFFFF", alpha: 1.0)
        }
    }
    
    /// HEX #1978F2
    public static var blue: UIColor {
        switch AppThemeManager.current.type {
        case .light:
            return UIColor(hex: "1978F2", alpha: 1.0)
        case .dark:
            return UIColor(hex: "1978F2", alpha: 1.0)
        }
    }
}
