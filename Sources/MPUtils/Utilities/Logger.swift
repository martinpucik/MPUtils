//
//  Logger.swift
//  MPUtils
//
//  Created by Martin Púčik on 16/07/2017.
//  Copyright © 2017 MartinPucik. All rights reserved.
//

#if canImport(Foundation)
import Foundation

// MARK: - Log methods

public func INFO(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | 💙 [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

public func WARN(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | 💛 [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

public func ERROR(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | ❌ [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

// MARK: - Private Methods

private func lastFilePath(from string: StaticString) -> String {
    return ("\(string)" as NSString).lastPathComponent
}

private var formattedDate: String {
    return ISO8601DateFormatter().string(from: Date())
}

#endif
