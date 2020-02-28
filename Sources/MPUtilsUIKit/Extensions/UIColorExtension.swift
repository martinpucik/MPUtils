//
//  UIColorExtension.swift
//  MPUtils
//  Created by Martin Púčik on 28/02/2020.
//

#if canImport(UIKit)
import UIKit

public extension UIColor {
    /// Convenience alpha color modifier
    func alpha(_ alpha: CGFloat) -> UIColor { withAlphaComponent(alpha) }
}

#endif
