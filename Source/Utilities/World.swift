//
//  World.swift
//  MPUtils
//
//  Created by Martin Pucik on 20/10/2018.
//

import Foundation

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Network Activity Indicator
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// Shows newtwork activity indicator. Ensures Main Thread
public func showNetworkActivity() {

    DispatchQueue.main.async {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
}

/// Hides newtwork activity indicator. Ensures Main Thread.
public func hideNetworkActivity() {

    DispatchQueue.main.async {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// MARK: - Notifications
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

public func NC_ADD(observer: Any, selector: Selector, name: Notification.Name, obj: Any? = nil) {
    NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: obj)
}

public func NC_REMOVE(observer: Any) {
    NotificationCenter.default.removeObserver(observer)
}

public func NC_POST(name: Notification.Name, obj: Any? = nil) {
    NotificationCenter.default.post(name: name, object: obj)
}
