import XCTest
@testable import MPUtils

final class CollectionExtensionTests: XCTestCase {
    func testSafe() {
        let collection: [Int] = [0, 1, 2]
        XCTAssertEqual(collection[safe: 2], 2)
    }

    func testSafeToNil() {
        let collection: [Int] = [0, 1, 2]
        XCTAssertNil(collection[safe: 3])
    }
}
