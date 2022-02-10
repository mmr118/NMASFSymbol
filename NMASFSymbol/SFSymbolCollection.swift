//
//  SFSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation


/// A subject that represents a collection of unique `SFSymbol`s and basic
/// identifiable information; such as a title and infoSymbol.
open class SFSymbolCollection {
    
    private static let defaultTitle = "New Collection"
    
    internal static let defaultInfoSymbol: SFSymbol = .square_grid_2x2
    
    private var symbolSet = Set<SFSymbol>()
    
    /// The symbol used for quick information or summary purposes,
    /// e.g. the symbol for the image when the collection is in a `UITableView` or `List`
    public private(set) lazy var infoSymbol: SFSymbol = Self.defaultInfoSymbol
    
    /// The title of the collection
    public var title: String = defaultTitle

    /// A `Bool` indicating if the collection does not have symbols
    public var isEmpty: Bool { symbolSet.isEmpty }

    /// The number of symbols in the collection
    public var count: Int { symbolSet.count }

    /// Create a new collection with no symbols.
    ///
    /// If a title is not specified the value defaults to "New Collection"
    public init(title: String? = nil) {
        self.title = title ?? Self.defaultTitle
        self.infoSymbol = Self.defaultInfoSymbol
        self.symbolSet = []
    }

    /// Create a new collection with the given title and symbols.
    ///
    /// If a title is not specified the value defaults to "New Collection"
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    public init<S: Sequence>(title: String? = nil, symbols: S) where S.Element == SFSymbol {
        self.title = title ?? Self.defaultTitle
        self.symbolSet = Set(symbols)
    }

    /// Create a new collection with the given title, symbols and infoSymbol.
    ///
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    ///   - infoSymbol: the symbol used for quick information or summary reasons
    ///   - includeInfoInCollection: should the passed `infoSymbol` be included
    ///   in the collection's symbols
    public convenience init<S: Sequence>(title: String, symbols: S, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) where S.Element == SFSymbol {
        self.init(title: title, symbols: symbols)
        let shouldRemove = symbolSet.contains(self.infoSymbol)
        updateInfoSymbol(infoSymbol, includeNew: includeInfoInCollection, removeOld: shouldRemove)
    }
    
    /// - Returns: The `SFSymbol`s in `self`
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
    
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
    ///
    ///   If `removeOld` is set to `false`, the old symbol will be added to `self`
    ///   if it was not previously there.
    ///
    @discardableResult
    public func updateInfoSymbol(_ newSymbol: SFSymbol, includeNew: Bool = true, removeOld: Bool = false) -> SFSymbol {
        let oldSymbol = infoSymbol
        
        if removeOld {
            symbolSet.remove(oldSymbol)
        } else {
            symbolSet.insert(oldSymbol)
        }
        
        if includeNew {
            symbolSet.insert(newSymbol)
        }
        
        infoSymbol = newSymbol
        return oldSymbol
    }

    @discardableResult
    /// Adds symbol in to `self` if it is not already present
    /// - Parameter symbol: `SFSymbol` to add
    /// - Returns: `true` if it was not already included; otherwise `false`
    public func add(_ symbol: SFSymbol) -> Bool {
        return symbolSet.insert(symbol).inserted
    }

    /// Adds the symbols that are not present to `self`'s symbols
    public func add<S: Sequence>(_ symbols: S) where S.Element == SFSymbol {
        symbolSet.formUnion(symbols)
    }

    @discardableResult
    /// Removes the symbol from `self`'s symbols
    /// - Parameter symbol: `SFSymbol` to remove
    /// - Returns: The `SFSymbol` if it was found; otherwise, nil.
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        return symbolSet.remove(symbol)
    }

    /// Removes the symbols from `self`.
    public func remove<S: Sequence>(_ symbols: S) where S.Element == SFSymbol {
        return symbolSet.subtract(symbols)
    }

    /// Returns a `Bool` that indicates if the symbol exists in `self`
    /// - Parameter symbol: the symbol to look for
    /// - Returns: `true` if it exists in the collection; otherwise, `false`.
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolSet.contains(symbol)
    }

    /// Returns a `Bool` indicating if ALL of the passed symbols exist in `self`
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if ALL symbols are present in collection; otherwise, `false`.
    public func contains<S: Sequence>(allOf symbols: S) -> Bool where S.Element == SFSymbol {
        return symbolSet.isSuperset(of: symbols)
    }

    /// Returns a `Bool` indicating if `self` contains at least 1 of the
    /// passed symbols
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if at least 1 symbol is present in collection; otherwise, `false`.
    public func contains<S: Sequence>(anyOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !symbolSet.isDisjoint(with: symbols)
    }

    /// Returns a `Bool` indicating if `self` does not contain any of the
    /// passed symbols
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if `self` does not contain any of the passed symbols; otherwise, `false`.
    public func contains<S: Sequence>(noneOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }
    
}
