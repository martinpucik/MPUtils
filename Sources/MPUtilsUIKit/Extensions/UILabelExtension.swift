//
//  UILabelExtension.swift
//  MPUtilsUIKit
//
//  Created by Martin Púčik on 02/05/2020.
//

import Foundation
import UIKit

public extension UILabel {
    /// Creates UILabel instance set up with style from passed arguments
    /// - Parameters:
    ///   - text: text to be set in the label
    ///   - font: The font used to display the text.
    ///   - textColor: The color of the text.
    ///   - alignment: The technique to use for aligning the text.
    convenience init(text: String? = nil, font: UIFont? = nil, textColor: UIColor? = nil, alignment: NSTextAlignment? = nil) {
        self.init()
        self.text = text
        self.font = font ?? self.font
        self.textColor = textColor ?? self.textColor
        self.textAlignment = alignment ?? self.textAlignment
    }
}
