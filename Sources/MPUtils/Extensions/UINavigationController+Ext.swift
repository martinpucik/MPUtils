//
//  UINavigationController+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 15/02/2018.
//

import UIKit

public extension UINavigationController {
    final func makeEmptyBack(withImage image: UIImage? = nil, tintColor: UIColor? = nil) {
        let backImage = image ?? UIImage.init(named: "arrowBack")
        navigationBar.backIndicatorImage = backImage?.withRenderingMode(.alwaysTemplate)
        navigationBar.backIndicatorTransitionMaskImage = backImage?.withRenderingMode(.alwaysTemplate)
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem.init(title: "  ", style: .plain, target: nil, action: nil)
        if let tint = tintColor {
            navigationBar.topItem?.backBarButtonItem?.tintColor = tint
        }
    }
}
