//
//  SFSCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

open class SFSCollection: SFSCollectionProtocol {

    private let uuid = UUID()
    private var symbolSet = Set<SFSymbol>()
    private var isSFSCategory: Bool = false
    private var sfCategoryType: SFSCategoryCollection?

    public private(set) var defaultSymbol: SFSymbol

    public var title: String

    public init(title: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
        self.title = title
        self.defaultSymbol = defaultSymbol
        self.symbolSet = Set(symbols)
    }

    public init(_ sfsCategoryCollection: SFSCategoryCollection) {
        self.sfCategoryType = sfsCategoryCollection
        self.title = sfsCategoryCollection.title
        self.defaultSymbol = sfsCategoryCollection.defaultSymbol
        self.symbolSet = Set(sfsCategoryCollection.symbols())
    }
    
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
    
    public func updateDefaultSymbol(_ newDefault: SFSymbol, addToSymbolsIfNeed: Bool = true, removeExistingDefault: Bool = false) {
        if removeExistingDefault {
            symbolSet.remove(defaultSymbol)
        }
        
        if addToSymbolsIfNeed {
            symbolSet.insert(newDefault)
        }
        
        self.defaultSymbol = newDefault
    }
    
    @discardableResult
    public func add(_ symbol: SFSymbol) -> Bool {
        return symbolSet.insert(symbol).inserted
    }
    
    public func add(_ symbols: [SFSymbol]) {
        symbolSet.formUnion(symbols)
    }
    
    @discardableResult
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        return symbolSet.remove(symbol)
    }
    
    public func addCategory(_ category: SFSCategoryCollection) {
        symbolSet.formUnion(category.symbols())
    }
    
    public func addCategories(_ categories: [SFSCategoryCollection]) {
        categories.forEach { symbolSet.formUnion($0.symbols()) }
    }
    
    public func removeCategory(_ category: SFSCategoryCollection) {
        let presentSymbols = symbolSet.intersection(category.symbols())
        presentSymbols.forEach { symbolSet.remove($0) }
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolSet.contains(symbol)
    }

}


extension SFSCollection: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(uuid.hashValue)
        hasher.combine(title.hashValue)
        hasher.combine(defaultSymbol.hashValue)
        hasher.combine(symbolSet.hashValue)
    }
    
}


// MARK: - Collection Cache
public enum SFSCollectionCacheError: Error {

    case cannotCacheSFSCategory(String)


}


extension SFSCollection {

    public static internal(set) var cache = Set<SFSCollection>()

    public static func clearCache() {
        cache.removeAll()
    }

    @discardableResult
    public func cache() throws -> Bool {

        switch sfCategoryType {

        case .some(.custom(_)), .none:
            break

        case .some(let sfCategory):
            if case .custom = sfCategory { break }
            throw SFSCollectionCacheError.cannotCacheSFSCategory(String(describing: sfCategory.self))
        }

        return Self.cache.insert(self).inserted

    }

    @discardableResult
    public func removeFromCache() -> Bool {
        return Self.cache.remove(self) != nil
    }

}
