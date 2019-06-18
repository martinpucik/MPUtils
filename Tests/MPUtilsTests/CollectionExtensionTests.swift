import XCTest
@testable import MPUtils

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
