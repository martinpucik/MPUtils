//
//  UINavigationController+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 15/02/2018.
//

import UIKit

public extension UINavigationController {

    public final func makeEmptyBack(withImage image: UIImage? = nil) {
        let backImage = image ?? UIImage.init(named: "arrowBack")
        navigationBar.backIndicatorImage = backImage
        navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem.init(title: "  ", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
    }
}
