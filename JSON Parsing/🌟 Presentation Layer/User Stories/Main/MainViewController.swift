//
//  MainViewController.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper
import GKRepresentable

protocol MainViewInput: ViperViewInput {
    func updateSections(_ sections: [TableSectionModel])
}

protocol MainViewOutput: ViperViewOutput { }

class MainViewController: ViperViewController, MainViewInput {

    // MARK: - Outlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Props
    fileprivate var output: MainViewOutput? {
        guard let output = self._output as? MainViewOutput else { return nil }
        return output
    }
    
    var sections: [TableSectionModel] = []
    
    // MARK: - Lifecycle
    override func viewDidLayoutSubviews() {
        self.applyStyles()
    }
    
    // MARK: - Setup functions
    func setupComponents() {
        self.navigationItem.title = ""
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerCellNib(TextCell.self)
        self.tableView.registerCellNib(ImageCell.self)
        self.tableView.registerCellNib(SelectorCell.self)
    }
    
    func setupActions() { }
    
    func applyStyles() {
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.tableView.apply(.standart())
        }
    }
    
    // MARK: - MainViewInput
    override func setupInitialState(with viewModel: ViperViewModel) {
        super.setupInitialState(with: viewModel)
        
        self.setupComponents()
        self.setupActions()
    }
    
    func updateSections(_ sections: [TableSectionModel]) {
        
        self.sections = sections
        
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.tableView.backgroundView = nil
            strongSelf.tableView.reloadData()
        }
    }
}

// MARK: - Actions
extension MainViewController { }

// MARK: - Module functions
extension MainViewController { }

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let sectionCount = self.sections.count
        return sectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowsCount = self.sections[section].rows.count
        return rowsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = self.sections[indexPath.section].rows[indexPath.row]
        
        if model is TextCellModel {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: model.cellIdentifier) as? TextCell else { return UITableViewCell() }
            cell.model = model
            return cell
        }
        
        if model is ImageCellModel {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: model.cellIdentifier) as? ImageCell else { return UITableViewCell() }
            cell.model = model
            return cell
        }
        
        if model is SelectorCellModel {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: model.cellIdentifier) as? SelectorCell else { return UITableViewCell() }
            cell.model = model
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    
}
