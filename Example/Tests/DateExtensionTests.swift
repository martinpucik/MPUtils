//
//  DateExtensionTests.swift
//  MPUtils_Tests
//
//  Created by Martin Pucik on 23/10/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import Nimble
import MPUtils

class DateExtensionTests: XCTestCase {

    let date = Date.init(timeIntervalSince1970: 0)

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Hours
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    func testRemainingTimeStringSingleHours() {

        let toDate = Date.init(timeIntervalSince1970: 3600)
        expect("1h").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    func testRemainingTimeStringDoubleHours() {

        let toDate = Date.init(timeIntervalSince1970: 86400)
        expect("24h").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MARK: - Hours & Minutes
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    func testRemainingTimeStringSingleHoursSingleMinutes() {

        let toDate = Date.init(timeIntervalSince1970: 3660)
        expect("1h 1m").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    func testRemainingTimeStringSingleHoursDoubleMinutes() {

        let toDate = Date.init(timeIntervalSince1970: 4260)
        expect("1h 11m").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    func testRemainingTimeStringDoubleHoursSingleMinutes() {

        let toDate = Date.init(timeIntervalSince1970: 39660)
        expect("11h 1m").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    func testRemainingTimeStringDoubleHoursDoubleMinutes() {

        let toDate = Date.init(timeIntervalSince1970: 40260)
        expect("11h 11m").to(equal(date.remainingTimeString(toDate: toDate)))
    }

    func testRemainingTimeStringHoursMinutesSeconds() {

        let toDate = Date.init(timeIntervalSince1970: 86466)
        expect("24h 1m 6s").to(equal(date.remainingTimeString(toDate: toDate)))
    }
}
