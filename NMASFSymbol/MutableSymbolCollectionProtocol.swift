//
//  MutableSymbolCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

public protocol MutableSymbolCollectionProtocol: SymbolCollectionProtocol {
    
    /// Adds symbol in to `self` if it is not already present
    /// - Parameter symbol: `SFSymbol` to add
    /// - Returns: `true` if it was not already included; otherwise `false`
    func add(_ symbol: SFSymbol) -> Bool
    
    /// Adds the symbols that are not present to `self`'s symbols
    func add<S: Sequence>(_ symbols: S) where S.Element == SFSymbol
    
    /// Removes the symbol from `self`'s symbols
    /// - Parameter symbol: `SFSymbol` to remove
    /// - Returns: The `SFSymbol` if it was found; otherwise, nil.
    func remove(_ symbol: SFSymbol) -> SFSymbol?
    
    /// Removes the symbols from `self`.
    func remove<S: Sequence>(_ symbols: S) where S.Element == SFSymbol
    
}
