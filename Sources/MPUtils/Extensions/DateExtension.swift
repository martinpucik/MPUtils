//
//  DateExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 15/04/2018.
//

#if canImport(Foundation)
import Foundation

public extension Date {
    func remainingTimeString(toDate: Date) -> String? {
        let formatter = DateComponentsFormatter()
        formatter.zeroFormattingBehavior = .default
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: toDate.timeIntervalSince1970-self.timeIntervalSince1970)
    }
}

#endif
