//
//  SFSCollectionProtocol.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

public protocol SFSCollectionProtocol: Hashable, Identifiable {
    
    var title: String { get }
    var defaultSymbol: SFSymbol { get }

    func symbols() -> [SFSymbol]
}

extension SFSCollectionProtocol where Self: RawRepresentable {
    
    internal var selfString: String { String(describing: self.self) }
    
}

extension SFSCollectionProtocol {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(title.hashValue)
        hasher.combine(defaultSymbol.hashValue)
    }

    public func symbolsEqual<T: SFSCollectionProtocol>(_ category: T) -> Bool {
        return Set(self.symbols()) == Set(category.symbols())
    }

}

public func ==<T: SFSCollectionProtocol>(lhs: T, rhs: T) -> Bool {
    return lhs.title == rhs.title
    && lhs.defaultSymbol == rhs.defaultSymbol
    && Set(lhs.symbols()) == Set(rhs.symbols())
}

