//
//  UITableViewCellExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

#if canImport(UIKit)
import UIKit

public extension UITableViewCell {
    /// TableView cell reuse indentifier generated based on cell class name
    static var identifier: String { String(describing: self) }
}

#endif
