//
//  URLExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 19/02/2020.
//

import Foundation

public extension URL {
    /// Convenience failable URL initializer with optional string as parameter. Will return nil
    /// for nil string argument
    /// - Parameter string: optional string to create URL from
    init?(string: String?) {
        guard let string = string else {
            return nil
        }

        self.init(string: string)
    }
}
