//
//  SFSMutableCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

public protocol SFSMutableCollectionProtocol: SFSCollectionProtocol {
    
    /// Updates the symbol used for information/summary purposes.
    ///
    /// If `removeOld` is set to `false`, the old symbol will be added to the
    /// collection if it was not previously there.
    /// - Parameters:
    ///   - newSymbol: the new symbol
    ///   - includeNew: should the new symbol should be included in `self.symbols()`
    ///   symbols; default `true`
    ///   - removeOld: should the old (current symbol before the update) be
    ///   removed from `self`; default `false`
    /// - Returns: the old `infoSymbol`, the symbol that was replaced
    func updateInfoSymbol(_ newSymbol: SFSymbol, includeNewInCollection includeNew: Bool, removeOldFromCollection removeOld: Bool) -> SFSymbol
    
    /// Replaces the current symbols with the passed symbols
    ///  - parameter newSymbols: The new symbols to set in the collection
    func setSymbols<S: Sequence>(_ newSymbols: S) where S.Element == SFSymbol

    /// Adds symbol in to `self` if it is not already present
    /// - Parameter newSymbols: `SFSymbol` to add
    /// - Returns: `true` if it was not already included; otherwise `false`
    func add(_ newSymbol: SFSymbol) -> Bool
    
    /// Adds the symbols that are not present to `self`'s symbols
    /// - Parameter newSymbols: the symbols to add
    func add<S: Sequence>(_ newSymbols: S) where S.Element == SFSymbol
    
    /// Removes the symbol from `self`'s symbols
    /// - Parameter targetSymbol: `SFSymbol` to remove
    /// - Returns: The `SFSymbol` if it was found; otherwise, nil.
    func remove(_ targetSymbol: SFSymbol) -> SFSymbol?
    
    /// Removes the symbols from `self`.
    /// - Parameter targetSymbols: the symbols to remove
    func remove<S: Sequence>(_ targetSymbols: S) where S.Element == SFSymbol
    
    /// Removes all symbols from `self`
    func removeAllSymbols()
    
    /// Adds the symbols from the passed collection to `self`'s symbols.
    /// - Parameter collection: the collection whose symbols are to be added.
    /// - Returns: symbols added to `self`
    func mergeSymbols<C: SFSCollectionProtocol>(from collection: C) -> Set<SFSymbol>
    
    /// Adds the symbols from the passed collections to `self`'s symbols.
    /// - Parameter collections: the collections whose symbols are to be added.
    /// - Returns: symbols added to `self`
    func mergeSymbols<S: Sequence>(from collections: S) -> Set<SFSymbol> where S.Element: SFSCollectionProtocol

    /// Removes the symbols in the passed collection from `self`'s symbols.
    /// - Parameter collections: the collection whose symbols are to be removed.
    /// - Returns: symbols removed from `self`
    func separateSymbols<C: SFSCollectionProtocol>(from collection: C) -> Set<SFSymbol>
    
    /// Removes the symbols in the passed collections from `self`'s symbols.
    /// - Parameter collections: the collections whose symbols are to be removed.
    /// - Returns: symbols removed from `self`
    func separateSymbols<S: Sequence>(from collections: S)  -> Set<SFSymbol> where S.Element: SFSCollectionProtocol

    
}
