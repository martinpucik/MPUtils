//
//  UIViewController+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 15/04/2018.
//
#if canImport(UIKit)

import UIKit

public extension UIViewController {
    var canBePopped: Bool {
        guard let navController = navigationController else { return false }
        return
            navController.viewControllers.count > 1 &&
            navController.viewControllers.last == self
    }
}

#endif
