//
//  Constants.swift
//  Some Auto Layout
//
//  Created by Shishir_Mac on 4/3/23.
//

import Foundation
import UIKit

struct Colors {
    static let tropicBlue = UIColor(red: 0, green: 192/255, blue: 255/255, alpha: 1)
}


struct Fonts {
    static let avenirNextCondensedDemiBold = "AvenirNextCondensed-DemiBold"
}

extension UIView {
    // UIView Shadow function
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1.5
        
    }
}
