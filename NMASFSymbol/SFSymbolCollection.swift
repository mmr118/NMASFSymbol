//
//  SFSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation


open class SFSymbolCollection {
    
    /// The title to use if an empty `String` is passed as title
    private static let defaultTitle = "New Collection"
    
    internal static let defaultInfoSymbol: SFSymbol = .square_grid_2x2
    
    private var symbolSet = Set<SFSymbol>()
    
    /// The symbol used for quick information or summary purposes,
    /// e.g. the symbol for the image when the collection is in a `UITableView` or `List`
    public private(set) lazy var infoSymbol: SFSymbol = Self.defaultInfoSymbol
    
    /// The name of the collection
    public var title: String = defaultTitle
    
    open init() { }
    /// A collection of `SFSymbol`s
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    ///   - infoSymbol: the symbol used for quick information or summary reasons
    ///   - includeInfoInCollection: should the passed `infoSymbol` be included
    ///   in the collection's symbols
    ///
    convenience init(title: String, symbols: [SFSymbol], infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) {
        self.init(title: title, symbols: symbols)
        let shouldRemove = symbolSet.contains(self.infoSymbol)
        updateInfoSymbol(infoSymbol, includeNew: includeInfoInCollection, removeOld: shouldRemove)
    }
    
    /// A collection of `SFSymbol`s with the default `infoSymbol`
    ///
    /// - Parameters:
    ///   - title: name of the collection
    ///   - symbols: inital symbols in the collection
    ///
    public init(title: String, symbols: [SFSymbol]) {
        let adjustedTitle = title.isEmpty ? title : Self.defaultTitle
        self.title = adjustedTitle
        self.symbolSet = Set(symbols)
    }
    
    ///
    /// - Returns: The `SFSymbol`s in the the collection
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
    
    /// Updates the displayed symbol for information/summary purposes.
    ///
    /// If `removeOld` is set to `false`, the old symbol will be added to the
    /// collection if it was not previously there.
    ///
    /// - Parameters:
    ///   - newSymbol: the new symbol
    ///   - includeNew: should the new info symbol be included in the collection
    ///   symbols; default `true`
    ///   - removeOld: should the old (current symbol before the update) be
    ///   removed from the collection; default `false`
    /// - Returns: the old `infoSymbol`, the symbol that was replaced
    ///
    ///   If `removeOld` is set to `false`, the old symbol will be added to the
    ///   collection if it was not previously there.
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
    
}
