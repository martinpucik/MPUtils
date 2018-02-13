//
//  UIApplication+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import UIKit

public extension UIApplication {

    public static var animated: Bool {
        return !UIAccessibilityIsReduceMotionEnabled()
    }
}
