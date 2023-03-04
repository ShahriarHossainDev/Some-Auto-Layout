//
//  CardTableViewCell.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet weak var contentVIew: UIView!
    @IBOutlet weak var proImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        timeLabel.text = nil
        proImageView.image = nil
        contentVIew.layer.cornerRadius = 10
        contentVIew.dropShadow()
    }
    
    // MARK: Cell Configuration
    
    func configurateTheCell(_ recipe: Recipe) {
        titleLabel.text = recipe.name
        timeLabel.text = "Prep Time: " + recipe.prepTime
        proImageView.image = UIImage(named: recipe.thumbnails)
    }

}
