//
//  InitialAssembly.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

enum InitialAssembly {
    
    // Create and return controller
    static func create() -> InitialViewController {
        let vc = InitialViewController(nibName: InitialViewController.identifier, bundle: nil)
        return vc
    }
    
    // Create and link modules with controller, return presenter input
    static func configure(with reference: InitialViewController) -> InitialPresenterInput {
        let presenter = InitialPresenter()
        
        let interactor = InitialInteractor()
        interactor._output = presenter
        
        let router = InitialRouter()
        router._mainController = reference
        
        presenter._view = reference
        presenter._interactor = interactor
        presenter._router = router
        
        reference._output = presenter
        
        return presenter
    }
    
}
