//
//  SFSymbolCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

/// A type that contains a collection of unique `SFSymbol`s and basic
/// identifiable information; such as a title and infoSymbol.
public protocol SFSymbolCollectionProtocol: Hashable, Identifiable {
    
    var uuid: UUID { get }
    
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
    func symbols() -> [SFSymbol]
    
    /// Returns a `Bool` that indicates if the symbol exists in `self`
    /// - Parameter symbol: the symbol to look for
    /// - Returns: `true` if it exists in the collection; otherwise, `false`.
    func contains(_ symbol: SFSymbol) -> Bool
    
    /// Returns a `Bool` indicating if ALL of the passed symbols exist in `self`
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if ALL symbols are present in collection; otherwise, `false`.
    func contains<S: Sequence>(allOf symbols: S) -> Bool where S.Element == SFSymbol
    
    /// Returns a `Bool` indicating if `self` contains at least 1 of the
    /// passed symbols
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if at least 1 symbol is present in collection; otherwise, `false`.
    func contains<S: Sequence>(anyOf symbols: S) -> Bool where S.Element == SFSymbol
    
    /// Returns a `Bool` indicating if `self` does not contain any of the
    /// passed symbols
    /// - Parameter symbol: the symbols to look for
    /// - Returns: `true` if `self` does not contain any of the passed symbols; otherwise, `false`.
    func contains<S: Sequence>(noneOf symbols: S) -> Bool where S.Element == SFSymbol
    
}


// MARK: Hashable Conformance
extension SFSymbolCollectionProtocol {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(title.hash)
        hasher.combine(title.hashValue)
        hasher.combine(uuid.hashValue)
    }
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.title == rhs.title
        && Set(lhs.symbols()) == Set(rhs.symbols())
        && lhs.infoSymbol == rhs.infoSymbol
    }
}


// MARK: Identifiable Conformance
extension SFSymbolCollectionProtocol {
    
    public var id: Int { uuid.hashValue }
    
}
