//
//  UINavigationControllerExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 15/02/2018.
//

#if canImport(UIKit)
import UIKit

public extension UINavigationController {
    /// Removes text from back UIBarButton
    /// - Parameters:
    ///   - image: optional UIImage to be used as UINavigationBar.backIndicatorImage
    ///   - tintColor: optional tint color to use as backBarButtonItem.tintColor
    open func makeEmptyBack(withImage image: UIImage? = nil, tintColor: UIColor? = nil) {
        navigationBar.backIndicatorImage = image?.withRenderingMode(.alwaysTemplate)
        navigationBar.backIndicatorTransitionMaskImage = image?.withRenderingMode(.alwaysTemplate)
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem.init(title: "  ", style: .plain, target: nil, action: nil)
        if let tint = tintColor {
            navigationBar.topItem?.backBarButtonItem?.tintColor = tint
        }
    }
}

#endif
