//
//  SFSymbolCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

/// A type that contains a collection of unique `SFSymbol`s and basic
/// identifiable information; such as a title and infoSymbol.
public protocol SFSymbolCollectionProtocol: Hashable {
    
    /// The title of the collection
    var title: String { get }
    
    /// A `Bool` indicating if the collection does not have symbols
    var isEmpty: Bool { get }
    
    /// The number of symbols in the collection
    var count: Int { get }
    
    /// The symbol used for quick information or summary purposes,
    /// e.g. the symbol for the image when the collection is in a `UITableView` or `List`
    var infoSymbol: SFSymbol { get }
    
    /// - Returns: The `SFSymbol`s in `self`
    var symbols: Set<SFSymbol> { get }
    
}

public extension SFSymbolCollectionProtocol {
    
    var isEmpty: Bool { symbols.isEmpty }
    
    var count: Int { symbols.count }
    
    /// Returns a `Bool` indicating if the symbol exists in `self`
    /// - Parameter targetSymbol: the symbol to look for
    /// - Returns: `true` if it exists in the collection; otherwise, `false`.
    func contains(_ targetSymbol: SFSymbol) -> Bool {
        return symbols.contains(targetSymbol)
    }
    
    /// Returns a `Bool` indicating if ALL of the passed symbols exist in `self`
    /// - Parameter targetSymbol: the symbols to look for
    /// - Returns: `true` if ALL symbols are present in collection; otherwise, `false`.
    func contains<S: Sequence>(allOf targetSymbols: S) -> Bool where S.Element == SFSymbol {
        return symbols.isSuperset(of: targetSymbols)
    }
    
    /// Returns a `Bool` indicating if `self` contains at least 1 of the
    /// passed symbols
    /// - Parameter targetSymbol: the symbols to look for
    /// - Returns: `true` if at least 1 symbol is present in collection; otherwise, `false`.
    func contains<S: Sequence>(anyOf targetSymbols: S) -> Bool where S.Element == SFSymbol {
        return !symbols.isDisjoint(with: targetSymbols)
    }
    
    /// Returns a `Bool` indicating if `self` does not contain any of the
    /// passed symbols
    /// - Parameter targetSymbol: the symbols to look for
    /// - Returns: `true` if `self` does not contain any of the passed symbols; otherwise, `false`.
    func contains<S: Sequence>(noneOf targetSymbols: S) -> Bool where S.Element == SFSymbol {
        return !contains(anyOf: targetSymbols)
    }
    
}

extension SFSymbolCollectionProtocol {
    
    /// Returns a `Bool` that indicating if all the symbols from the passed collection exist in `self`
    /// - Parameter targetSymbol: the collection whose symbols to look for
    /// - Returns: `true` if it exists in the collection; otherwise, `false`.
    func contains<C: SFSymbolCollectionProtocol>(allSymbolsFrom collection: C) -> Bool {
        return contains(allOf: collection.symbols)
    }
    
    /// Returns a `Bool` indicating if `self` contains at least 1 symbol in common with the passed collection
    /// - Parameter targetSymbol: the collection whose symbols to look for
    /// - Returns: `true` if it exists in the collection; otherwise, `false`.
    func contains<C: SFSymbolCollectionProtocol>(anySymbolsFrom collection: C) -> Bool {
        return contains(anyOf: collection.symbols)
    }
    
    /// Returns a `Bool` indicating if `self` has no symbols in common with passed collection
    /// - Parameter targetSymbol: the symbols to look for
    /// - Returns: `true` if `self` does not contain any of the passed symbols; otherwise, `false`.
    func contains<C: SFSymbolCollectionProtocol>(noSymbolsFrom collection: C) -> Bool {
        return contains(noneOf: collection.symbols)
    }
    
}

// MARK: Hashable Conformance
extension SFSymbolCollectionProtocol {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(title.hash)
        hasher.combine(title.hashValue)
        hasher.combine(symbols.hashValue)
    }
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.title == rhs.title
        && Set(lhs.symbols) == Set(rhs.symbols)
        && lhs.infoSymbol == rhs.infoSymbol
    }
}


// MARK: - SFSymbol+SFSymbolCollectionProtocol
public extension SFSymbol {
    
    /// Gives all the symbols present in the specified collections
    /// - parameter collections: The collections whose symbols to combine
    /// - Returns: a set of symbols from the given collections
    static func allSymbols<S: Sequence>(from collections: S) -> Set<SFSymbol> where S.Element: SFSymbolCollectionProtocol {
        return collections.reduce(Set<SFSymbol>()) { $0.union($1.symbols) }
    }
    
    /// Gives all common symbols in the specified collections
    /// - parameter collections: The collections whose symbols to find comminality with
    /// - Returns: a set of symbols that are common to the given collections
    static func commonSymbols<S: Sequence>(in collections: S) -> Set<SFSymbol> where S.Element: SFSymbolCollectionProtocol {
        let allSymbols = allSymbols(from: collections)
        return collections.reduce(allSymbols) { $0.intersection($1.symbols) }
    }
    
}
