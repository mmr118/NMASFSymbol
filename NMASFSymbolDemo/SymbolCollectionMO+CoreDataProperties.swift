//
//  SymbolCollectionMO+CoreDataProperties.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//
//

import Foundation
import CoreData
import NMASFSymbol


extension SymbolCollectionMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SymbolCollectionMO> {
        return NSFetchRequest<SymbolCollectionMO>(entityName: "SymbolCollectionMO")
    }

    @NSManaged public var dateCreated: Date
    @NSManaged public var infoSymbolRawValue: String
    @NSManaged public var uuid: UUID
    @NSManaged public var title: String
    @NSManaged public var symbolsRawValues: Set<String>

}

extension SymbolCollectionMO : Identifiable {
    
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
