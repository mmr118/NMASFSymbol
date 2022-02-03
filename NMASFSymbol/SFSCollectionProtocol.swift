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

extension SFSCollectionProtocol {


    public func symbolsEqual<T: SFSCollectionProtocol>(_ category: T) -> Bool {
        return Set(self.symbols()) == Set(category.symbols())
    }

    public static func == (lhs: Self, rhs: Self) -> Bool {
        return (lhs.title == rhs.title) && (lhs.defaultSymbol == rhs.defaultSymbol) && (Set(lhs.symbols()) == Set(rhs.symbols()))
    }
    
    public func hash(into hasher: inout Hasher) {
//        hasher.combine(uuid.hashValue)
        hasher.combine(title.hashValue)
        hasher.combine(defaultSymbol.hashValue)
//        hasher.combine(symbolSet.hashValue)
    }

}


extension SFSCollectionProtocol where Self: RawRepresentable {

    internal var selfString: String { String(describing: self.self) }
    
}
