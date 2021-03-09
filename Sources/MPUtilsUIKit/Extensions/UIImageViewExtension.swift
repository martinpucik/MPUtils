//
//  UIImageViewExtension.swift
//  MPUtils
//
//  Created by Martin Pucik on 09.03.2021.
//

import Foundation
import UIKit

public extension UIImageView {
    // MARK: - Convenience inits

    /// Convenience initialized for UIImageView with contentMode setting as an argument
    /// - Parameters:
    ///   - image: optional image to set into imageView
    ///   - contentMode: contentMode to use for this UIImageView
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init(image: image)
        self.contentMode = contentMode
    }

    /// Convenience initialized for UIImageView with contentMode setting as an argument
    /// - Parameters:
    ///   - imageLiteralName: literal image resource name
    ///   - contentMode: contentMode to use for this UIImageView
    convenience init(imageLiteralName: String, contentMode: UIView.ContentMode = .scaleToFill) {
        self.init(image: UIImage(imageLiteralResourceName: imageLiteralName))
        self.contentMode = contentMode
    }
}
