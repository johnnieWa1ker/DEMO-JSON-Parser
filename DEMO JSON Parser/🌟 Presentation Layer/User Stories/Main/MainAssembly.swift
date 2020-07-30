//
//  MainAssembly.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

enum MainAssembly {
    
    // Create and return controller
    static func create() -> MainViewController {
        let vc = MainViewController(nibName: MainViewController.identifier, bundle: nil)
        return vc
    }
    
    // Create and link modules with controller, return presenter input
    static func configure(with reference: MainViewController) -> MainPresenterInput {
        let presenter = MainPresenter()
        
        let router = MainRouter()
        router._mainController = reference
        
        presenter._view = reference
        presenter._router = router
        
        reference._output = presenter
        
        return presenter
    }
    
}
