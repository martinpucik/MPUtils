//
//  UIBarButtonItemExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 22/02/2020.
//

#if canImport(UIKit)
import UIKit

public extension UIBarButtonItem {
    convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem) {
        self.init(barButtonSystemItem: systemItem, target: nil, action: nil)
    }

    static var flexibleSpace: UIBarButtonItem {
        UIBarButtonItem(barButtonSystemItem: .flexibleSpace)
    }

    static var fixedSpace: UIBarButtonItem {
        UIBarButtonItem(barButtonSystemItem: .fixedSpace)
    }
}

#endif
