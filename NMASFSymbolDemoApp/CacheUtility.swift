//
//  CacheUtility.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

import NMASFSymbol
import CoreData
import Foundation

extension Result where Success == SFSCollection, Failure == Error {
    
    func description() -> String {
        switch self {
        case .success(let value):
            return "Success: with collection - \(value.title)"
        case .failure(let value):
            return "Failure: with error - \(value.localizedDescription)"
        }
    }
}

// Cache functions

typealias Cache = NMACache<SFSCollection>

class CacheUtility {
    
    typealias CacheResult = Cache.CacheResult
    
    static var current = CacheUtility()
    
    struct CacheOption: OptionSet {
        let rawValue: Int
        static let local = CacheOption(rawValue: 1 << 0)
        static let loaded = CacheOption(rawValue: 1 << 1)
        
        static let all: CacheOption = [.local, .loaded]
        
    }
        
    let localCache: Cache
    let loadedCache: Cache
    
    var caches: Set<Cache> { Set([loadedCache, localCache]) }
    
    private var collectionToObjectIdDict: [SFSCollection: NSManagedObjectID]
    
    init(storedData: [SFSCollectionData] = []) {
        self.localCache = Cache()
        self.loadedCache = Cache()
        self.collectionToObjectIdDict = Dictionary(uniqueKeysWithValues: storedData.map { (SFSCollection(collectionData: $0), $0.objectID) })
    }
    
    func isPersisted(_ collection: SFSCollection) -> Bool {
        return collectionToObjectIdDict[collection] != nil
    }
    
    func cache(_ collection: SFSCollection, to options: CacheOption = CacheOption.local) {
        let destination = (options == .local) ? localCache : loadedCache
        if let currentCache = caches.first(where: { $0.contains(collection) }) {
            if currentCache != destination {
                let result = currentCache.remove(collection)
                llog.result(result)
            }
        }
        
        let result = destination.add(collection)
        llog.result(result)
    }
    
    func cache<S: Sequence>(_ collections: S, to options: CacheOption = CacheOption.local) where S.Element == SFSCollection {
        for collection in collections {
            cache(collection)
        }
    }
//        let destination = (options == .local) ? localCache : loadedCache
//        if let currentCache = caches.first(where: { $0.contains(collection) }) {
//            if currentCache != destination {
//                let result = currentCache.remove(collection)
//                llog.result(result)
//            }
//        }
//
//        let result = destination.add(collection)
//        llog.result(result)
//    }
    
    func clear(_ options: CacheOption = .local) {
        performOnCaches(options) { $0.dump() }
    }
    
    func store(_ collection: SFSCollection, options: CacheOption = .local) {
        performOnCaches(options) { $0.add(collection) }
    }

    func store<S: Sequence>(_ collections: S, options: CacheOption = .local) where S.Element == SFSCollection {
        performOnCaches(options) { $0.add(elems: collections) }
    }
    
    func remove(_ collection: SFSCollection, option: CacheOption = .local) {
        performOnCaches(option) { $0.remove(collection) }
    }

    func remove<S: Sequence>(_ collections: S, option: CacheOption = .local) where S.Element == SFSCollection {
        performOnCaches(option) { $0.remove(elems: collections) }
    }
    
    func contains(_ collection: SFSCollection, option: CacheOption = .local) -> Bool {
        switch option {
        case .local: return localCache.contains(collection)
        case .loaded: return loadedCache.contains(collection)
        case .all:
            for cache in [localCache, loadedCache] {
                if cache.contains(collection) == true {
                    return true
                }
                
            }
            return false
            
        default:
            return false

        }
                
    }


    private func performOnCaches(_ options: CacheOption, _ action: (Cache) -> Void, function: StaticString = #function, line: UInt = #line) {
        let caches: [Cache]
        switch options {
        case .local: caches = [localCache]
        case .loaded: caches = [loadedCache]
        case .all: caches = [localCache, loadedCache]
        default:
            return
        }
        
        for cache in caches {
            action(cache)
        }
        
//        for cache in caches {
//            let result = action(cache)
//            llog.result<CacheResult>(result)
            
//        }
        
    }
        
}


// MARK: Static functions
//extension SFSCollection {
    
//    public typealias Cache = NMACache<SFSCollection>
//    public typealias CacheResult = Cache.CacheResult
//    public typealias CacheResults = Cache.CacheResultsReport
//
//    public static let cache = Cache()
    
//    @discardableResult
//    public static func store<S: Sequence>(_ collections: S) -> CacheResults where S.Element == SFSCollection {
//        return cache.add(elems: collections)
//    }
    
    
//    public static func contains(_ collection: SFSCollection) -> Bool {
//        return cache.contains(collection)
//    }
    
    //    public static func filter(_ isIncluded: (SFSCollection) throws -> Bool) rethrows -> [SFSCollection] {
    //        let results = try cache.elements().filter { try isIncluded($0) }
    //        return results
    //    }
    //
    //    public static func filter(_ isIncluded: (SFSCollection) -> Bool) -> [SFSCollection] {
    //        return cache.elements().filter(isIncluded)
    //    }
    
//}


//// MARK: Caching `self`
//extension SFSCollection {
//
//    // MARK: for caching `self`
//    @discardableResult
//    public func cache(in cache: Cache? = nil) -> CacheResult {
//        if let cache = cache {
//            return cache.add(self)
//        } else {
//            return SFSCollection.cache.add(self)
//        }
//    }
//
//    @discardableResult
//    public func removeFromCache(_ cache: Cache? = nil) -> CacheResult {
//        if let cache = cache {
//            return cache.remove(self)
//        } else {
//            return SFSCollection.cache.remove(self)
//        }
//    }
//
//}
//
//
