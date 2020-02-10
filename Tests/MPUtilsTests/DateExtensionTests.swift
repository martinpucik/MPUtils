import XCTest
@testable import MPUtils

final class DateExtensionTests: XCTestCase {

    let date = Date.init(timeIntervalSince1970: 0)

    // MARK: - Hours

    func testRemainingTimeStringSingleHours() {
        let toDate = Date.init(timeIntervalSince1970: 3600)
        XCTAssertEqual("1h", date.remainingTimeString(toDate: toDate))
    }

    func testRemainingTimeStringDoubleHours() {
        let toDate = Date.init(timeIntervalSince1970: 86400)
        XCTAssertEqual("24h", date.remainingTimeString(toDate: toDate))
    }

    // MARK: - Hours & Minutes

    func testRemainingTimeStringSingleHoursSingleMinutes() {
        let toDate = Date.init(timeIntervalSince1970: 3660)
        XCTAssertEqual("1h 1m", date.remainingTimeString(toDate: toDate))
    }

    func testRemainingTimeStringSingleHoursDoubleMinutes() {
        let toDate = Date.init(timeIntervalSince1970: 4260)
        XCTAssertEqual("1h 11m", date.remainingTimeString(toDate: toDate))
    }

    func testRemainingTimeStringDoubleHoursSingleMinutes() {
        let toDate = Date.init(timeIntervalSince1970: 39660)
        XCTAssertEqual("11h 1m", date.remainingTimeString(toDate: toDate))
    }

    func testRemainingTimeStringDoubleHoursDoubleMinutes() {
        let toDate = Date.init(timeIntervalSince1970: 40260)
        XCTAssertEqual("11h 11m", date.remainingTimeString(toDate: toDate))
    }

    func testRemainingTimeStringHoursMinutesSeconds() {
        let toDate = Date.init(timeIntervalSince1970: 86466)
        XCTAssertEqual("24h 1m 6s", date.remainingTimeString(toDate: toDate))
    }
}
