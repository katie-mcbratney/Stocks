//
//  Array+Extensions.swift
//  Stocks
//
//  Created by Katie McBratney on 8/25/21.
//

import Foundation

extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element]{
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}
