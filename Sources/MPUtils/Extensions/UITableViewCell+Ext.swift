//
//  UITableViewCell+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//
#if canImport(UIKit)

import UIKit

public extension UITableViewCell {
    static var identifier: String {
        return NSStringFromClass(type(of: self.init()))
    }
}

#endif