//
//  Array+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import Foundation

public extension Array where Element == String {

    func toString() -> String {
        var string = ""

        for line in self {
            string.append(line)
            string.append("\n")
        }

        return string.trim()
    }
}
