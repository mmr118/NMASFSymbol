//
//  SFSCollection+Cache.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/3/22.
//

import Foundation

// MARK: Static functions
extension SFSCollection {
    
    public typealias Cache = NMACache<SFSCollection>
    public typealias CacheResult = Cache.CacheResult
    public typealias CacheResults = Cache.CacheResultsReport

    public static let cache = Cache()
    
    public static func clearCache() {
        cache.dump()
    }
    
    @discardableResult
    public static func store<S: Sequence>(_ collections: S) -> CacheResults where S.Element == SFSCollection {
        return cache.add(elems: collections)
    }
    
    public static func remove<S: Sequence>(_ collections: S) -> CacheResults where S.Element == SFSCollection {
        return cache.remove(elems: collections)
    }
    
    public static func contains(_ collection: SFSCollection) -> Bool {
        return cache.contains(collection)
    }
    
//    public static func filter(_ isIncluded: (SFSCollection) throws -> Bool) rethrows -> [SFSCollection] {
//        let results = try cache.elements().filter { try isIncluded($0) }
//        return results
//    }
//
//    public static func filter(_ isIncluded: (SFSCollection) -> Bool) -> [SFSCollection] {
//        return cache.elements().filter(isIncluded)
//    }

}

// MARK: Caching `self`
extension SFSCollection {
    
    // MARK: for caching `self`
    @discardableResult
    public func cache() -> CacheResult {
        return SFSCollection.cache.add(self)
    }

    @discardableResult
    public func removeFromCache() -> CacheResult {
        return SFSCollection.cache.remove(self)
    }
    
}
