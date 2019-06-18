//
//  String+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import Foundation

public extension String {
    func trim() -> String {
        return trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    }

    func linesArray() -> [String] {
        let newlineChars = NSCharacterSet.newlines
        let lines = components(separatedBy: newlineChars)
        return lines
    }
}
