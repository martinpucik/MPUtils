//
//  UIViewControllerExtension.swift
//  MPUtils
//  Created by Martin Púčik on 15/04/2018.
//

#if canImport(UIKit)
import UIKit

public extension UIViewController {
    /// Flag indicating if caller UIViewController can be poped from the stack
    var canBePopped: Bool {
        guard let navController = navigationController else { return false }
        return
            navController.viewControllers.count > 1 &&
            navController.viewControllers.last == self
    }

    func add(_ child: UIViewController) {
        child.willMove(toParent: self)
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func add(child: UIViewController, to view: UIView) {
        child.willMove(toParent: self)
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove(_ child: UIViewController) {
        child.willMove(toParent: nil)
        child.view.removeFromSuperview()
        child.removeFromParent()
    }
}

#endif
