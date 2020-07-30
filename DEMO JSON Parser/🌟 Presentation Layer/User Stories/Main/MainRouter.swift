//
//  MainRouter.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

protocol MainRouterInput: ViperRouterInput { }

class MainRouter: ViperRouter, MainRouterInput {
    
    // MARK: - Props
    fileprivate var mainController: MainViewController? {
        guard let mainController = self._mainController as? MainViewController else {
            return nil
        }
        return mainController
    }
    
    // MARK: - MainRouterInput
    
    // MARK: - Module functions
}
