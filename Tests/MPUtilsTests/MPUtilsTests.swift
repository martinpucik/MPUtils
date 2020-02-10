import XCTest
@testable import MPUtils

final class MPUtilsTests: XCTestCase {
    static var allTests = [
        ("testSafe", CollectionExtensionTests.testSafe),
        ("testSafeToNil", CollectionExtensionTests.testSafeToNil),
    ]
}
