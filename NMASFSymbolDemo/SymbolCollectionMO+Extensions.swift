//
//  SymbolCollectionMO+Extensions.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/10/22.
//

import CoreData
import NMASFSymbol


extension SymbolCollectionMO: SFMutableSymbolCollectionProtocol {
    
    // MARK: - Collection conformance
    private static let defaultInfoSymbol: SFSymbol = .square_stack_3d_down_right_fill
    
    public var uuid: UUID { internalUUID ?? UUID() }
    
    public var title: String {
        get { self.name ?? "New Collection (MO)" }
        set { self.name = newValue }
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
        guard let name = name else { return Self.defaultInfoSymbol }
        return SFSymbol(name: name) ?? Self.defaultInfoSymbol
    }
    
    
    // MARK: - Mutable conformance
    public func add(_ symbol: SFSymbol) -> Bool {
        self.symbolsRawValues?.insert(symbol.systemName).inserted ?? false
    }
    
    public func add<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToAdd = symbols.map { $0.systemName }
        self.symbolsRawValues?.formUnion(rawValuesToAdd)
    }
    
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        guard let removedRawValue = self.symbolsRawValues?.remove(symbol.systemName) else { return nil }
        return SFSymbol(name: removedRawValue)
    }
    
    public func remove<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToRemove = symbols.map { $0.systemName }
        self.symbolsRawValues?.subtract(rawValuesToRemove)
    }
    
}
