//
//  ArrayExtensionTests.swift
//  MPUtils_Tests
//
//  Created by Martin Pucik on 23/10/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import Nimble

class ArrayExtensionTests: XCTestCase {

    func testToString() {

        let stringArray = ["one", "two", "three"]
        expect(stringArray.toString()).to(equal("one\ntwo\nthree"))
    }
}
