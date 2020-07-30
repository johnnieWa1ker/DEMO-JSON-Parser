//
//  InitialRouter.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

protocol InitialRouterInput: ViperRouterInput {
    func presentMain()
}

class InitialRouter: ViperRouter, InitialRouterInput {
    
    // MARK: - Props
    fileprivate var mainController: InitialViewController? {
        guard let mainController = self._mainController as? InitialViewController else {
            return nil
        }
        return mainController
    }
    
    // MARK: - InitialRouterInput
    
    func presentMain() {
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self else { return }
            
            let vc = MainAssembly.create()
            _ = MainAssembly.configure(with: vc)
            vc.modalPresentationStyle = .fullScreen
            
            strongSelf.present(vc, animated: true)
        }
    }
    
    // MARK: - Module functions
}
