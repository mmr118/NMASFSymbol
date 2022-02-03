//
//  SFSCollection+Cache.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/3/22.
//

import Foundation

extension SFSCollection {
    
    public typealias Cache = NMACache<SFSCollection>
    public typealias CacheResult = Cache.CacheResult
    public typealias CacheResults = Cache.CacheResults

    public static let cache = Cache()
    
    public static func clearCache() {
        cache.clear()
    }
    
    @discardableResult
    public static func store<S: Sequence>(_ collections: S) -> CacheResults where S.Element == SFSCollection {
        return cache.add(elems: collections)
    }
    
    public static func remove<S: Sequence>(_ collections: S) -> CacheResults where S.Element == SFSCollection {
        return cache.remove(elems: collections)
    }
    
    @discardableResult
    public func cache() -> CacheResult {
        return SFSCollection.cache.add(self)
    }

    @discardableResult
    public func removeFromCache() -> CacheResult {
        return SFSCollection.cache.remove(self)
    }
    
}
