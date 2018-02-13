//
//  UIApplication+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import UIKit

extension UIApplication {

    static var animated: Bool {
        return !UIAccessibilityIsReduceMotionEnabled()
    }
}
