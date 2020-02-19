//
//  UIApplicationExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//
#if canImport(UIKit)

import UIKit

public extension UIApplication {
    static var animated: Bool { !UIAccessibility.isReduceMotionEnabled }
}

#endif
