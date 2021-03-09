import XCTest
import UIKit
@testable import MPUtilsUIKit

final class UIViewExtensionTests: XCTestCase {
    func testAddSubviews() {
        let mainView = UIView()
        mainView.addSubviews(UIView(), UIView(), UIView(), UIView(), UIView(),
                             UIView(), UIView(), UIView(), UIView(), UIView(),
                             UIView(), UIView(), UIView(), UIView(), UIView(),
                             UIView(), UIView(), UIView(), UIView(), UIView(),
                             UIView(), UIView(), UIView(), UIView(), UIView(),
                             UIView(), UIView(), UIView(), UIView(), UIView())

        XCTAssertEqual(mainView.subviews.count, 30)
    }
}
