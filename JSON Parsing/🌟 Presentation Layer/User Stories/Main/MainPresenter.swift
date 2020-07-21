//
//  MainPresenter.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper
import GKRepresentable

protocol MainPresenterInput: ViperPresenterInput { }

class MainPresenter: ViperPresenter, MainPresenterInput, MainViewOutput {
    
    // MARK: - Props
    fileprivate var view: MainViewInput? {
        guard let view = self._view as? MainViewInput else {
            return nil
        }
        return view
    }
    
    fileprivate var router: MainRouterInput? {
        guard let router = self._router as? MainRouterInput else {
            return nil
        }
        return router
    }
    
    var viewModel: MainViewModel
    var dataUseCase: DataUseCaseInput
    
    // MARK: - Initialization
    override init() {
        self.viewModel = MainViewModel()
        self.dataUseCase = DataUseCase()
        super.init()
        self.dataUseCase.subscribe(with: self)
    }
    
    // MARK: - MainPresenterInput
    func selectedModule(_ index: Int) {
        let message = AppLocalization.Main.notification.loc + " " + String(index)
        self.showNotice(message, style: .info, duration: .short)
    }
    
    // MARK: - MainViewOutput
    override func viewIsReady(_ controller: UIViewController) {
        self.view?.setupInitialState(with: self.viewModel)
        self.dataUseCase.getData()
    }
    
    // MARK: - Module functions
    func makeSections() {
        let mainSection = TableSectionModel()
        
        guard let views = self.viewModel.views else { return }
        for view in views {
            guard let modules = self.viewModel.modules else { return }
            for module in modules {
                
                if view == ViewType.text.rawValue && module.name == ViewType.text.rawValue {
                    guard let title = module.data?.title else { return }
                    let cellModel = TextCellModel(title: title)
                    mainSection.rows.append(cellModel)
                }
                
                if view == ViewType.image.rawValue && module.name == ViewType.image.rawValue {
                    guard let title = module.data?.title else { return }
                    guard let imageUrlStr = module.data?.imageUrl else { return }
                    if let imageUrl = URL(string: imageUrlStr) {
                        let cellModel = ImageCellModel(title: title, imageUrl: imageUrl)
                        mainSection.rows.append(cellModel)
                    }
                }
                
                if view == ViewType.selector.rawValue && module.name == ViewType.selector.rawValue {
                    guard let option = module.data?.option else { return }
                    guard let selectedOption = module.data?.selectedOptionId else { return }
                    let cellModel = SelectorCellModel(values: option, selectedValue: selectedOption)
                    mainSection.rows.append(cellModel)
                    
                }
            }
        }
        
        if mainSection.rows.isEmpty {
            self.view?.updateSections([])
        } else {
            self.view?.updateSections([mainSection])
        }
    }
}

extension MainPresenter: DataUseCaseOutput {
    
    func provideData(_ data: DataModel) {
        self.viewModel.modules = data.data
        self.viewModel.views = data.views
        self.makeSections()
    }
    
    func provideError(_ error: Error) {
        
    }
    
    func noInternetConnection() {
        self.view?.finishLoading(with: nil)
        self.showNotice(AppLocalization.ErrorMessage.noInternetConnection.loc, style: .error, duration: .short)
    }
}
