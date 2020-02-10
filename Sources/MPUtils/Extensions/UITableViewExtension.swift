//
//  UITableViewExtension.swift
//  
//
//  Created by Martin Púčik on 10/02/2020.
//
#if canImport(UIKit)

import UIKit

public extension UITableView {
    // MARK: - Cell registering
    func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type, identifierSuffix: String? = nil) {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? cellClass.identifier : "\(cellClass.identifier)_\(suffix)"
        register(cellClass, forCellReuseIdentifier: reuseIdentifier)
    }

    func dequeueReusableCell<Cell: UITableViewCell>(forIndexPath indexPath: IndexPath, identifierSuffix: String? = nil) -> Cell {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? Cell.identifier : "\(Cell.identifier)_\(suffix)"
        guard let cell = dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Cell else {
            fatalError("TableView Cell at indexPath \(indexPath) is not expected type")
        }
        return cell
    }
}

#endif
