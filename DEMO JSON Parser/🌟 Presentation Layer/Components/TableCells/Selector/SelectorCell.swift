//
//  SelectorCell.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper
import GKRepresentable

class SelectorCell: TableCell {
    
    // MARK: - Outlets
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var selector: UIPickerView!
    
    // MARK: - Props
    
    // MARK: - Setup functions
    override func setupView() {
        self.apply(.clear())
        self.containerView.apply(.roundedAllCorners(AppTheme.blue))
        
        self.selector.setValue(AppTheme.white, forKey: "textColor")
        self.selector.dataSource = self
        self.selector.delegate = self
    }
    
    override func updateViews() {
        guard let model = self.model as? SelectorCellModel else { return }
        self.selector.selectRow(model.selectedValue, inComponent: 0, animated: false)
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) { }
    
    // MARK: - Actions
}

// MARK: - Module functions
extension SelectorCell { }

// MARK: - UIPickerViewDataSource
extension SelectorCell: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        guard let model = self.model as? SelectorCellModel else { return 0}
        return model.values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        guard let model = self.model as? SelectorCellModel else { return ""}
        let value = model.values[row].text
        return value
    }
}

// MARK: - UIPickerViewDelegate
extension SelectorCell: UIPickerViewDelegate { }
