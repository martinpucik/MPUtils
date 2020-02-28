//
//  UIBarButtonItemExtension.swift
//  MPUtils
//  Created by Martin Púčik on 22/02/2020.
//

#if canImport(UIKit)
import UIKit

public extension UIBarButtonItem {
    /// Convenience init for UIBarButtonItem with default target and action as nil
    /// - Parameter systemItem: type of system item
    convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem) {
        self.init(barButtonSystemItem: systemItem, target: nil, action: nil)
    }

    /// Creates system UIBarButtonItem with type .flexibleSpace
    static var flexibleSpace: UIBarButtonItem {
        UIBarButtonItem(barButtonSystemItem: .flexibleSpace)
    }

    /// Creates system UIBarButtonItem with type .fixedSpace
    static var fixedSpace: UIBarButtonItem {
        UIBarButtonItem(barButtonSystemItem: .fixedSpace)
    }
}

#endif
