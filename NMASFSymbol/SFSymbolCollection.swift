//
//  SFSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation


/// A subject that represents a collection of unique `SFSymbol`s and basic
/// identifiable information; such as a title and infoSymbol.
open class SFSymbolCollection: SFMutableSymbolCollectionProtocol {
    
    private static let defaultTitle = "New Collection"
    
    internal static let defaultInfoSymbol: SFSymbol = .square_grid_2x2
        
    public var title: String = defaultTitle
    
    public var count: Int { symbols.count }
    
    public var isEmpty: Bool { symbols.isEmpty }
    
    public private(set) lazy var infoSymbol: SFSymbol = Self.defaultInfoSymbol

    public private(set) var symbols = Set<SFSymbol>()
    
    /// Creates a new collection with no symbols.
    ///
    /// If a title is not specified the value defaults to "New Collection"
    public init(title: String? = nil) {
        self.title = title ?? Self.defaultTitle
        self.infoSymbol = Self.defaultInfoSymbol
        self.symbols = Set()
    }

    /// Creates a new collection with the given title and symbols.
    ///
    /// If a title is not specified the value defaults to "New Collection"
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    public init<S: Sequence>(title: String? = nil, symbols: S) where S.Element == SFSymbol {
        self.title = title ?? Self.defaultTitle
        self.symbols = Set(symbols)
    }

    /// Creates a new collection with the given title, symbols and infoSymbol.
    ///
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    ///   - infoSymbol: the symbol used for quick information or summary reasons
    ///   - includeInfoInCollection: should the passed `infoSymbol` be included
    ///   in the collection's symbols
    public convenience init<S: Sequence>(title: String, symbols: S, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) where S.Element == SFSymbol {
        self.init(title: title, symbols: symbols)
        let shouldRemove = symbols.contains(self.infoSymbol)
        updateInfoSymbol(infoSymbol, includeNewInCollection: includeInfoInCollection, removeOldFromCollection: shouldRemove)
    }

    /// Create a new collection with the given title, symbols from passed collection and infoSymbol.
    ///
    /// - Parameters:
    ///   - title: name of the collection
    ///   - collection: collection whose symbols to include
    ///   - infoSymbol: the symbol used for quick information or summary reasons
    ///   - includeInfoInCollection: should the passed `infoSymbol` be included
    ///   in the collection's symbols
    public convenience init<C: SFSymbolCollectionProtocol>(title: String? = nil, infoSymbol: SFSymbol? = nil, symbolsIn collection: C, includeInfoInCollection: Bool = true) {
        self.init(title: title ?? Self.defaultTitle, symbols: collection.symbols, infoSymbol: infoSymbol ?? Self.defaultInfoSymbol, includeInfoInCollection: includeInfoInCollection)
    }
    
    /// Create a new collection with the given title, symbols from passed collection and infoSymbol.
    ///
    /// - Parameters:
    ///   - title: name of the collection
    ///   - collections: the collections whose symbols to include
    ///   - infoSymbol: the symbol used for quick information or summary reasons
    ///   - includeInfoInCollection: should the passed `infoSymbol` be included
    ///   in the collection's symbols
    public convenience init<S: Sequence>(title: String? = nil, infoSymbol: SFSymbol? = nil, symbolsIn collections: S, includeInfoInCollection: Bool = true) where S.Element: SFSymbolCollectionProtocol {
        let symbols = collections.reduce(Set<SFSymbol>()) { $0.union($1.symbols) }
        self.init(title: title ?? Self.defaultTitle, symbols: symbols, infoSymbol: infoSymbol ?? Self.defaultInfoSymbol, includeInfoInCollection: includeInfoInCollection)
    }

    @discardableResult
    public func updateInfoSymbol(_ newSymbol: SFSymbol, includeNewInCollection includeNew: Bool = true, removeOldFromCollection removeOld: Bool = false) -> SFSymbol {
        let oldSymbol = infoSymbol
        
        if removeOld {
            symbols.remove(oldSymbol)
        } else {
            symbols.insert(oldSymbol)
        }
        
        if includeNew {
            symbols.insert(newSymbol)
        }
        
        infoSymbol = newSymbol
        return oldSymbol
    }
    
    // MARK: - SFMutableSymbolCollectionProtocol conformance
    public func setSymbols<S: Sequence>(_ newSymbols: S) where S.Element == SFSymbol {
        self.symbols = Set(newSymbols)
    }
    
    @discardableResult
    public func add(_ newSymbol: SFSymbol) -> Bool {
        return self.symbols.insert(newSymbol).inserted
    }

    public func add<S: Sequence>(_ newSymbols: S) where S.Element == SFSymbol {
        self.symbols.formUnion(newSymbols)
    }
    
    @discardableResult
    public func remove(_ targetSymbol: SFSymbol) -> SFSymbol? {
        return symbols.remove(targetSymbol)
    }

    public func remove<S: Sequence>(_ targetSymbols: S) where S.Element == SFSymbol {
        self.symbols.subtract(targetSymbols)
    }
    
    public func removeAllSymbols() {
        self.symbols.removeAll()
    }
    
    public func mergeSymbols<C: SFSymbolCollectionProtocol>(from collection: C) -> Set<SFSymbol> {
        let symbolsBefore = symbols
        add(collection.symbols)
        return symbols.subtracting(symbolsBefore)
    }
    
    public func mergeSymbols<S: Sequence>(from collections: S)  -> Set<SFSymbol> where S.Element: SFSymbolCollectionProtocol {
        let symbolsBefore = symbols
        let newSymbols = collections.reduce(Set<SFSymbol>()) { $0.union($1.symbols) }
        add(newSymbols)
        return symbols.subtracting(symbolsBefore)
    }
    
    public func separateSymbols<C: SFSymbolCollectionProtocol>(from collection: C) -> Set<SFSymbol> {
        let symbolsBefore = symbols
        remove(collection.symbols)
        return symbolsBefore.subtracting(symbols)
    }

    public func separateSymbols<S: Sequence>(from collections: S) -> Set<SFSymbol> where S.Element: SFSymbolCollectionProtocol {
        let symbolsBefore = symbols
        let targetSymbols = collections.reduce(Set<SFSymbol>()) { $0.union($1.symbols) }
        remove(targetSymbols)
        return symbolsBefore.subtracting(symbols)
    }

}
