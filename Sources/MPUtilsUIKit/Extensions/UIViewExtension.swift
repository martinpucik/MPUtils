//
//  UIViewExtension.swift
//  
//
//  Created by Martin Púčik on 10/02/2020.
//

#if canImport(UIKit)
import UIKit

public extension UIView {
    /// Add a variadic list of views to the caller as subviews
    /// - Parameter subviews: list of views to add as subviews
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }

    /// Add an array of views to the caller as subviews
    /// - Parameter subviews: list of views to add as subviews
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
}

#endif
