//
//  UICollectionReusableViewExtension.swift
//  
//
//  Created by Martin Púčik on 05/04/2020.
//

import Foundation
#if canImport(UIKit)
import UIKit

public extension UICollectionReusableView {
    /// UICollectionReusableView reuse indentifier generated based on cell class name
    static var identifier: String { String(describing: self) }
}
#endif
