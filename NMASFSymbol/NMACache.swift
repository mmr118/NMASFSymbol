//
//  NMACache.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/3/22.
//

import Foundation

@frozen public enum NMACacheError: Error {
    case elementExistsInCache(String)
    case capacityLimitReached(String)
}


final public class NMACache<T: Any> where T: Equatable {

    public typealias CacheResult = Result<T, Error>
    public typealias CacheResults = (insertedAll: Bool, results: Array<CacheResult>)

    public enum ClearCycle {
        case never
        case onceOn(on: Date)
        case onceIn(interval: TimeInterval)
        case loop(interval: TimeInterval)
        case capacityLimit(count: Int)
    }
    
    private var clearCycleTimer: Timer?
    private var contents = [T]()
    
    public var count: Int { contents.count }
    public var clearContentsHander: (([T]) -> Void)?
    public var clearCapacityLimit: Int {
        guard case let .capacityLimit(limit) = clearCycle else { return 0 }
        return limit
    }
    
    public var allowsDuplicates: Bool = false {
        didSet {  }
    }
    
    public var clearCycle: ClearCycle = .never {
        didSet { configureCycleTimer() }
    }
    
    // MARK: - Init
    public init(clearCycle: ClearCycle = .never, allowsDuplicates: Bool = false) {
        self.clearCycle = clearCycle
        self.allowsDuplicates = allowsDuplicates
    }
    
    // MARK: Access
    public func elements() -> [T] {
        return contents
    }
    
    public func contains(_ elem: T) -> Bool {
        return contents.contains(elem)
    }

    // MARK: Add
    @discardableResult
    public func add(_ elem: T) -> CacheResult {
        
        if case .capacityLimit(let limit) = clearCycle {
            if contents.count >= limit {
                clear()
            }
        }
        
        do {
            let result = try privateAdd(elem)
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
    
    @discardableResult
    public func add<S: Sequence>(elems: S) -> CacheResults where S.Element == T {
        var results = [CacheResult]()
        var insertedAll = true
        for elem in elems {
            let result = add(elem)
            if case .failure = result {
                insertedAll = false
            }
            results.append(remove(elem))
        }
        
        return (insertedAll, results)
    }

    // MARK: Remove
    @discardableResult
    public func remove(_ elem: T) -> CacheResult {
        do {
            let result = try privateRemove(elem)
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
    
    @discardableResult
    public func remove<S: Sequence>(elems: S) -> CacheResults where S.Element == T {
        var results = [CacheResult]()
        var insertedAll = true
        for elem in elems {
            let result = remove(elem)
            if case .failure = result {
                insertedAll = false
            }
            results.append(remove(elem))
        }
        
        return (insertedAll, results)
    }
    
    @discardableResult
    public func clear() -> [T] {
        let removedElems = contents
        contents.removeAll()
        return removedElems
    }
    
    @objc private func timerClearHandler() {
        clear()
        switch clearCycle {
        case .onceOn, .onceIn:
            clearCycle = .never
        default:
            break
        }
    }
    
}



// MARK: - Private
extension NMACache {

    private func privateAdd(_ elem: T) throws -> T {
        if allowsDuplicates && contents.contains(elem) {
            let info = String(describing: elem)
            throw NMACacheError.elementExistsInCache(info)
        } else {
            return elem
        }
    }
    
    private func privateRemove(_ elem: T) throws -> T {
        if let _ = contents.firstIndex(of: elem) {
            let info = String(describing: elem)
            throw NMACacheError.elementExistsInCache(info)
        } else {
            contents.append(elem)
            return elem
        }
        
    }
    
    private func cacheLimitReached() -> Bool {
        guard case .capacityLimit(let limit) = clearCycle else { return false }
        return contents.count >= limit
    }
    
    private func configureCycleTimer() {
        
        switch clearCycle {
            
        case .never:
            clearCycleTimer?.invalidate()
            clearCycleTimer = nil
            
        case .capacityLimit:
            break
            
        case .onceOn(let clearDate):
            fireTimer(clearDate.timeIntervalSinceNow, repeats: false)
            
        case .onceIn(let interval):
            fireTimer(interval, repeats: false)
            
        case .loop(let interval):
            fireTimer(interval, repeats: true)
            
        }
    }
        
    private func fireTimer(_ interval: TimeInterval, repeats: Bool) {
        
        let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: repeats) { [weak self] timer in
            guard let strongSelf = self else { return }
            
            DispatchQueue.main.async {
                let removedElems = strongSelf.clear()
                strongSelf.clearContentsHander?(removedElems)
            }
        }
        
        timer.fire()
        self.clearCycleTimer = timer

    }
    
    private func removeDuplacates() {
        
        contents = contents.reduce([T]()) { current, next in
            if current.contains(next) {
                return current
            } else {
                return current + [next]
            }
            
        }
            
    }
    
}
