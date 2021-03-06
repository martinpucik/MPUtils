//
//  CollectionExtension.swift
//  MPUtils
//
//  Created by Martin Pucik on 23/10/2018.
//

#if canImport(Foundation)
import Foundation

public extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }

    var isNotEmpty: Bool {
        return !isEmpty
    }
}

#endif
