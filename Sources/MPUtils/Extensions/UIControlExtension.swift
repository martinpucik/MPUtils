//
//  UIControlExtension.swift
//  MPUtils
//
//  Created by Martin Púčik on 19/02/2020.
//

#if canImport(UIKit)
import UIKit

private final class ClosureSleeve {
    let closure: () -> Void

    init(closure: @escaping () -> Void) {
        self.closure = closure
    }

    @objc func invoke() {
        closure()
    }
}

public extension UIControl {
    /// Provides convenient closure action for UIControl
    /// - Parameters:
    ///   - event: event type to fire closure for
    ///   - action: closure that will be fired for every UIControl Event with specified type.
    func tapped(_ event: UIControl.Event = .touchUpInside, _ action: @escaping () -> Void) {
        let sleeve = ClosureSleeve(closure: action)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: event)
        objc_setAssociatedObject(self, "[\(arc4random())]", sleeve, .OBJC_ASSOCIATION_RETAIN)
    }
}

#endif
