//
//  SymbolCollectionMONonOpt+CoreDataProperties.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//
//

import Foundation
import CoreData
import NMASFSymbol

extension SymbolCollectionMONonOpt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SymbolCollectionMONonOpt> {
        return NSFetchRequest<SymbolCollectionMONonOpt>(entityName: "SymbolCollectionMONonOpt")
    }

    @NSManaged public var title: String
    @NSManaged public var dateCreated: Date
    @NSManaged public var infoSymbolRawValue: String
    @NSManaged public var symbolsRawValues: Set<String>
    @NSManaged public var uuid: UUID

}

extension SymbolCollectionMONonOpt : Identifiable {

    public var infoSymbol: SFSymbol {
        get { SFSymbol(name: infoSymbolRawValue) ?? Default.infoSymbol }
        set { self.infoSymbolRawValue = newValue.rawValue }
    }
    
    var symbolSet: Set<SFSymbol> {
        get { Set(symbolsRawValues.compactMap { SFSymbol(name: $0) }) }
        set { self.symbolsRawValues =  Set(newValue.map { $0.rawValue }) }
    }

}


extension SymbolCollectionMO: SFMutableSymbolCollectionProtocol {
    
    public var uuid: UUID {
        if let value = self.iUUID {
            return value
        } else {
            let value = UUID()
            self.iUUID = value
            return value
        }
    }
    
    public var title: String {
        get { name ?? Default.collectionTitle + " MO" }
        set { name = newValue }
    }
    
    public var isEmpty: Bool { symbols().isEmpty }
    
    public var count: Int { symbols().count }
    
    public var infoSymbol: SFSymbol { _symbol(infoSymbolRawValue) }
    
    public func symbols() -> [SFSymbol] {
        guard let symbolsRawValues = symbolsRawValues else { return [] }
        return symbolsRawValues.compactMap { SFSymbol(name: $0) }
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolsRawValues?.contains(symbol.systemName) ?? false
    }
    
    public func contains<S>(allOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        let symbolNames = Set(symbols.map { $0.systemName })
        return symbolsRawValues?.isSuperset(of: symbolNames) ?? false
    }
    
    public func contains<S>(anyOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        let symbolNames = Set(symbols.map { $0.systemName })
        return symbolsRawValues?.isDisjoint(with: symbolNames) ?? false
    }
    
    public func contains<S>(noneOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }
    
    private func _symbol(_ name: String?) -> SFSymbol {
        guard let name = name else { return Default.infoSymbol }
        return SFSymbol(name: name) ?? Default.infoSymbol
    }
    
    
    // MARK: - Mutable conformance
    @discardableResult
    public func add(_ symbol: SFSymbol) -> Bool {
        self.symbolsRawValues?.insert(symbol.systemName).inserted ?? false
    }
    
    public func add<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToAdd = symbols.map { $0.systemName }
        self.symbolsRawValues?.formUnion(rawValuesToAdd)
    }
    
    @discardableResult
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        guard let removedRawValue = self.symbolsRawValues?.remove(symbol.systemName) else { return nil }
        return SFSymbol(name: removedRawValue)
    }
    
    
    public func remove<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToRemove = symbols.map { $0.systemName }
        self.symbolsRawValues?.subtract(rawValuesToRemove)
    }
    
    public func removeAll() {
        self.symbolsRawValues = Set()
    }
    
}


extension SymbolCollectionMONonOpt: SFMutableSymbolCollectionProtocol {
        
    public var isEmpty: Bool { symbolsRawValues.isEmpty }
    
    public var count: Int { symbolsRawValues.count }
    
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolsRawValues.contains(symbol.rawValue)
    }
    
    public func contains<S: Sequence>(allOf symbols: S) -> Bool where S.Element == SFSymbol {
        return symbolSet.isSuperset(of: symbols)
    }
    
    public func contains<S: Sequence>(anyOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !symbolSet.isDisjoint(with: symbols)
    }
    
    public func contains<S: Sequence>(noneOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }
    
    @discardableResult
    public func add(_ symbol: SFSymbol) -> Bool {
        return symbolsRawValues.insert(symbol.systemName).inserted
    }
    
    public func add<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValues = symbols.map { $0.rawValue }
        symbolsRawValues.formUnion(rawValues)
    }
    
    @discardableResult
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        return symbolSet.remove(symbol)
    }
    
    public func remove<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        symbolSet.subtract(symbols)
    }
    
    public func removeAll() {
        symbolsRawValues = Set()
    }
    
}
