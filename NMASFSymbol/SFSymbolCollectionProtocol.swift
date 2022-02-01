//
//  SFSymbolCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

public protocol SFSymbolCollectionProtocol: Hashable, Identifiable {

    var displayName: String { get }

    var defaultSymbol: SFSymbol { get }

    func symbols() -> [SFSymbol]
}

public extension SFSymbolCollectionProtocol {

    var id: Int { self.hashValue }

    func symbolsEqual<T: SFSymbolCollectionProtocol>(_ category: T) -> Bool {
        return Set(self.symbols()) == Set(category.symbols())
    }

    static func == (lhs: Self, rhs: Self) -> Bool {
        guard lhs.displayName == rhs.displayName else { return false }
        guard lhs.defaultSymbol == rhs.defaultSymbol else { return false }
        return Set(lhs.symbols()) == Set(rhs.symbols())
    }

}

