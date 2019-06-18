//
//  CollectionExtensionTests.swift
//  MPUtils_Tests
//
//  Created by Martin Pucik on 23/10/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import Nimble
import MPUtils

class CollectionExtensionTests: XCTestCase {

    func testSafe() {

        let collection: [Int] = [0, 1, 2]
        expect(collection[safe: 2]).to(equal(2))
    }

    func testSafeToNil() {

        let collection: [Int] = [0, 1, 2]
        expect(collection[safe: 3]).to(beNil())
    }

}
