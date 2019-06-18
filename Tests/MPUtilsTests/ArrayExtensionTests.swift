import XCTest
@testable import MPUtils

class ArrayExtensionTests: XCTestCase {

    func testToString() {

        let stringArray = ["one", "two", "three"]
        expect(stringArray.toString()).to(equal("one\ntwo\nthree"))
    }
}
