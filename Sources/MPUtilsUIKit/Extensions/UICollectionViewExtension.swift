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
    /// Dequeues cell from collection view with set type
    func dequeueReusableCell<Cell: UICollectionViewCell>(forIndexPath indexPath: IndexPath, identifierSuffix: String? = nil) -> Cell {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? Cell.identifier : "\(Cell.identifier)_\(suffix)"
        guard let cell = dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? Cell else {
            fatalError("CollectionView Cell at indexPath \(indexPath) is not expected type")
        }
        return cell
    }
    /// Registers header view class just with the class type
    /// - Parameters:
    ///   - headerClass: Header class type
    ///   - identifierSuffix: optional suffix to use in reuse identifier
    func registerHeader<Header: UICollectionReusableView>(_ headerClass: Header.Type, identifierSuffix: String? = nil) {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? headerClass.identifier : "\(headerClass.identifier)_\(suffix)"
        register(headerClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: reuseIdentifier)
    }
    /// Dequeues header from collection view with set type
    func dequeueReusableHeader<Header: UICollectionReusableView>(forIndexPath indexPath: IndexPath, identifierSuffix: String? = nil) -> Header {
        let suffix = identifierSuffix ?? ""
        let reuseIdentifier = suffix.isEmpty ? Header.identifier : "\(Header.identifier)_\(suffix)"
        guard let header = dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                            withReuseIdentifier: reuseIdentifier,
                                                            for: indexPath) as? Header
        else {
            fatalError("CollectionView Header at indexPath \(indexPath) is not expected type")
        }
        return header
    }
}
#endif
