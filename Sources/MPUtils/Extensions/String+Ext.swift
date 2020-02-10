//
//  String+Ext.swift
//  MPUtils
//
//  Created by Martin Púčik on 13/02/2018.
//

import Foundation

public extension String {
    var trimmed: String { trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines) }
}
