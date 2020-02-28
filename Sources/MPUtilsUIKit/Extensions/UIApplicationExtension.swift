//
//  UIApplicationExtension.swift
//  MPUtils
//  Created by Martin Púčik on 13/02/2018.
//

#if canImport(UIKit)
import UIKit

public extension UIApplication {
    /// Returns whether the system preference for reduce motion is enabled and
    /// if application should do animations
    static var animated: Bool { !UIAccessibility.isReduceMotionEnabled }
}

#endif
