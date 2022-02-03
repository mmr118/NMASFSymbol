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
    internal var systemCategory: SFSCollection.SystemCategory? = nil
    
    public private(set) var defaultSymbol: SFSymbol

    public var title: String

    // MARK: Init
    public init(title: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
        self.title = title
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
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolSet.contains(symbol)
    }
    
}
