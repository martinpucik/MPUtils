//
//  NSCollectionLayoutSectionExtension.swift
//  MPUtilsUIKit
//
//  Created by Martin Púčik on 23/05/2020.
//

import Foundation
import UIKit

@available(tvOS 13.0, iOS 13.0, *)
public extension NSCollectionLayoutSection {
    /// Creates an empty layout section
    static var empty: NSCollectionLayoutSection {
        let size = NSCollectionLayoutSize(widthDimension: .absolute(0.1), heightDimension: .absolute(0.1))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.vertical(layoutSize: size, subitem: item, count: 1)
        return NSCollectionLayoutSection(group: group)
    }
}
