//
//  UITableViewCell+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import UIKit

extension UITableViewCell {

    static var identifier: String {
        return NSStringFromClass(type(of: self.init()))
    }
}
