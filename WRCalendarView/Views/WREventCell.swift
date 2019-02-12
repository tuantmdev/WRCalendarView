//
//  WREventCell.swift
//  Pods
//
//  Created by wayfinder on 2017. 4. 30..
//
//

import UIKit

class WREventCell: UICollectionViewCell {
    
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0
        
        updateColors()
    }
    
    var event: WREvent? {
        didSet {
            if let event = event {
                titleLabel.text = event.title
                updateColors()
            }
        }
    }
    
    func updateColors() {
        guard let event = event else { return }
        contentView.backgroundColor = event.backgroundColor
        borderView.backgroundColor = event.backgroundColor.withAlphaComponent(1)
        titleLabel.textColor = event.textColor
    }
    
    func backgroundColorHighlighted(_ selected: Bool) -> UIColor {
        return selected ? UIColor(hexString: "35b1f1")! : UIColor(hexString: "35b1f1")!.withAlphaComponent(0.1)
    }
    
    func textColorHighlighted(_ selected: Bool) -> UIColor {
        return selected ? UIColor.white : UIColor(hexString: "21729c")!
    }
    
    func borderColor() -> UIColor {
        return self.backgroundColorHighlighted(false).withAlphaComponent(1.0)
    }
}
