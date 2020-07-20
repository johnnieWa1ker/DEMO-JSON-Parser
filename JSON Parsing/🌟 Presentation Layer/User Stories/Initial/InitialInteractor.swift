//
//  InitialInteractor.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper

protocol InitialInteractorInput: ViperInteractorInput { }

protocol InitialInteractorOutput: ViperInteractorOutput { }

open class InitialInteractor: ViperInteractor, InitialInteractorInput {

    // MARK: - Props
    private var output: InitialInteractorOutput? {
        guard let output = self._output as? InitialInteractorOutput else {
            return nil
        }
        return output
    }
    
    // MARK: - Initialization
    override init() {        
        super.init()
    }
    
    // MARK: - InitialInteractorInput
    
    // MARK: - Module functions
}
