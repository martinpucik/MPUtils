//
//  NSTextAttachment+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 18/02/2018.
//

import Foundation

extension NSTextAttachment {
    func setImageHeight(height: CGFloat) {
        guard let image = image else { return }
        let ratio = image.size.width / image.size.height

        bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: ratio * height, height: height)
    }

    func scaleToWidth(_ width: CGFloat) {
        guard let image = image else { return }
        let ratio = image.size.width / image.size.height

        bounds = CGRect.init(x: bounds.origin.x, y: bounds.origin.y, width: width, height: ratio * width)
    }
}
