//
//  NSAttributedStringExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 17/02/2018.
//

#if canImport(Foundation)
import Foundation

public extension NSAttributedString {
    func attributedStringByTrimmingCharacterSet(charSet: CharacterSet) -> NSAttributedString {
        let modifiedString = NSMutableAttributedString(attributedString: self)
        modifiedString.trimCharactersInSet(charSet: charSet)
        return NSAttributedString(attributedString: modifiedString)
    }

    func trim() -> NSAttributedString {
        return attributedStringByTrimmingCharacterSet(charSet: CharacterSet.whitespacesAndNewlines)
    }
}

public extension NSMutableAttributedString {
    func trimCharactersInSet(charSet: CharacterSet) {
        var range = (string as NSString).rangeOfCharacter(from: charSet)

        // Trim leading characters from character set.
        while range.length != 0 && range.location == 0 {
            replaceCharacters(in: range, with: "")
            range = (string as NSString).rangeOfCharacter(from: charSet)
        }

        // Trim trailing characters from character set.
        range = (string as NSString).rangeOfCharacter(from: charSet, options: .backwards)
        while range.length != 0 && NSMaxRange(range) == length {
            replaceCharacters(in: range, with: "")
            range = (string as NSString).rangeOfCharacter(from: charSet, options: .backwards)
        }
    }
}

#endif
