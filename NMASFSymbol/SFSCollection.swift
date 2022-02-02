//
//  SFSCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

open class SFSCollection: SFSCollectionProtocol {
    
    private let uuid = UUID()
    
    public var displayName: String
    public private(set) var defaultSymbol: SFSymbol
    
    private var symbolSet = Set<SFSymbol>()
    
    public init(displayName: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
        self.displayName = displayName
        self.defaultSymbol = defaultSymbol
        self.symbolSet = Set(symbols)
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
    
    public func addCategory(_ category: SFSymbol.SystemCollection) {
        symbolSet.formUnion(category.symbols())
    }
    
    public func addCategories(_ categories: [SFSymbol.SystemCollection]) {
        categories.forEach { symbolSet.formUnion($0.symbols()) }
    }
    
    public func removeCategory(_ category: SFSymbol.SystemCollection) {
        let presentSymbols = symbolSet.intersection(category.symbols())
        presentSymbols.forEach { symbolSet.remove($0) }
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolSet.contains(symbol)
    }
    
    @discardableResult
    public func cache() -> Bool {
        return SFSymbol.SystemCollection.cache.insert(self).inserted
    }
    
    public func removeFromCache() {
        SFSymbol.SystemCollection.cache.remove(self)
    }
    
}


extension SFSCollection: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(uuid.hashValue)
        hasher.combine(displayName.hashValue)
        hasher.combine(defaultSymbol.hashValue)
        hasher.combine(symbolSet.hashValue)
    }
    
}

