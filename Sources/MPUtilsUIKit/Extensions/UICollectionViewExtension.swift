//
//  UICollectionViewExtension.swift
//  MPUtilsUIKit
//
//  Created by Martin Púčik on 05/04/2020.
//

import Foundation
#if canImport(UIKit)
import UIKit

public extension UICollectionView {
    /// Registers cell class just with the class type
    /// - Parameters:
    ///   - cellClass: Cell class type: AvatarTableViewCell.self
    ///   - identifierSuffix: optional suffix to use in reuse identifier
    func registerCell<Cell: UICollectionViewCell>(_ cellClass: Cell.Type, identifierSuffix: String? = nil) {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? cellClass.identifier : "\(cellClass.identifier)_\(suffix)"
        register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
    }

    /// Dequeues cell from table view with set type
    func dequeueReusableCell<Cell: UICollectionViewCell>(forIndexPath indexPath: IndexPath, identifierSuffix: String? = nil) -> Cell {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? Cell.identifier : "\(Cell.identifier)_\(suffix)"
        guard let cell = dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? Cell else {
            fatalError("CollectionView Cell at indexPath \(indexPath) is not expected type")
        }
        return cell
    }
}
#endif
