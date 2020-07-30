//
//  ImageCell.swift
//  JSON Parsing
//
//  Created by Johnnie Walker on 21.07.2020.
//  Copyright © 2020 JW. All rights reserved.
//

import GKViper
import GKRepresentable
import Kingfisher

class ImageCell: TableCell {
    
    // MARK: - Outlets
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var logoImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Props
    
    // MARK: - Setup functions
    override func setupView() {
        self.apply(.clear())
        self.containerView.apply(.roundedAllCorners(AppTheme.green))
        self.titleLabel.apply(.sfHeadlineBold18(AppTheme.white, .center))
    }
    
    override func updateViews() {
        guard let model = self.model as? ImageCellModel else { return }
        self.titleLabel.text = model.title
        self.logoImageView.setImage(fromUrl: model.imageUrl, placeholder: nil)
        self.logoImageView.contentMode = .scaleToFill
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) { }
    
    // MARK: - Actions
}

// MARK: - Module functions
extension ImageCell { }
