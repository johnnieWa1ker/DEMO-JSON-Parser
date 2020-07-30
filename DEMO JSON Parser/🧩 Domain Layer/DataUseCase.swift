//
//  DataUseCase.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 20.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKUseCase

protocol DataUseCaseInput: UseCaseInput {
    func getData()
}

protocol DataUseCaseOutput: UseCaseOutput {
    func provideData(_ data: DataModel)
    func provideError(_ error: Error)
    func noInternetConnection()
}

extension DataUseCaseOutput {
    func provideData(_ data: DataModel) { }
    func provideError(_ error: Error) { }
}

class DataUseCase: UseCase, DataUseCaseInput {
    
    // MARK: - Props
    private var output: DataUseCaseOutput? {
        guard let output = self._output as? DataUseCaseOutput else {
            return nil
        }
        return output
    }
    
    private lazy var dataRepository: DataRepositoryInterface = DataRepository()
    
    // MARK: - Initialization
    override public init() {
        super.init()
    }
    
    // MARK: - DataUseCaseInput
    func getData() {
        guard ReachabilityManager.isConnectedToNetwork() else {
            self.output?.noInternetConnection()
            return
        }
        self.dataRepository.getData { (result, error) in
            if let result = result, error == nil {
                self.output?.provideData(result)
            } else if let error = error {
                self.output?.provideError(error)
            }
        }
    }
}

// MARK: - Module functions
extension DataUseCase { }
